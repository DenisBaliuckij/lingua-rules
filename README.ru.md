# lingua-rules

[English](README.md) | **Русский**

Система для лингвистов, позволяющая записывать, просматривать и проверять
грамматические правила естественных языков. Правила пишутся в виде файлов
Clingo (Answer Set Programming), разложены по языкам и частям речи и
выполняются локально — без базы данных и внешних сервисов. В репозитории есть
правила для существительных **английского, немецкого, русского и финского**
языков.

Полное описание архитектуры — в `docs/superpowers/specs/2026-09-05-lingua-rules-design.md`.

Этот документ показывает, как запускать lingua-rules обычным `python` (без
псевдонимов в оболочке, без команды `lingua-rules` в `PATH`, без активации
виртуального окружения), как устроены шаблоны правил, какие шаблоны есть и как
их изменить или добавить свой. Все команды и их вывод ниже проверены на этом
репозитории.

- [1. Установка](#1-установка)
- [2. Запуск через `python -m`](#2-запуск-через-python--m)
- [3. Веб-интерфейс](#3-веб-интерфейс)
- [4. Файлы правил](#4-файлы-правил)
- [5. Шаблоны правил](#5-шаблоны-правил)
- [6. Пример: добавление языка (нидерландский)](#6-пример-добавление-языка-нидерландский)
- [7. Изменение шаблонов](#7-изменение-шаблонов)
- [8. Языки в репозитории](#8-языки-в-репозитории)
- [9. Эталонные тесты](#9-эталонные-тесты)
- [10. Подводные камни и известные ограничения](#10-подводные-камни-и-известные-ограничения)
- [11. Как обновить скриншоты](#11-как-обновить-скриншоты)

---

## 1. Установка

Нужны **Python 3.11 или новее** и `git`.

```
git clone https://github.com/DenisBaliuckij/lingua-rules.git
cd lingua-rules
```

Создайте виртуальное окружение и установите в него пакет. Активировать его
**не нужно**: все команды ниже вызывают интерпретатор окружения напрямую.

**Windows (PowerShell или cmd):**

```
python -m venv .venv
.venv\Scripts\python.exe -m pip install -e ".[dev]"
```

**Linux / macOS:**

```
python3 -m venv .venv
.venv/bin/python -m pip install -e ".[dev]"
```

Дальше в тексте `python` означает именно этот интерпретатор:
`.venv\Scripts\python.exe` в Windows, `.venv/bin/python` в Linux/macOS.
(Можно один раз активировать окружение — тогда подойдёт и просто `python`.)

### Запуск без установки пакета

Можно запускать прямо из исходников. Установите только зависимости и добавьте
`src/` в `PYTHONPATH`:

```
python -m pip install "clingo>=5.7" "typer>=0.12" "fastapi>=0.110" "python-multipart>=0.0.9" "jinja2>=3.1" "uvicorn>=0.29" "pyyaml>=6.0"
```

| Оболочка | Команда |
|---|---|
| PowerShell | `$env:PYTHONPATH = "src"; python -m lingua_rules.cli.main generate en nouns child --features number=plural` |
| cmd | `set PYTHONPATH=src`, затем `python -m lingua_rules.cli.main generate en nouns child --features number=plural` |
| Linux / macOS | `PYTHONPATH=src python -m lingua_rules.cli.main generate en nouns child --features number=plural` |

Результат: `children`.

---

## 2. Запуск через `python -m`

Любая команда выглядит так: `python -m lingua_rules.cli.main <команда> ...`.
Запускайте их из корня репозитория: по умолчанию правила читаются из
`./rules`, а тесты — из `./tests`. Любая команда принимает `--rules-dir`
(а `test` и `serve` — ещё и `--tests-dir`), чтобы указать другие папки.

```
python -m lingua_rules.cli.main --help
python -m lingua_rules.cli.main <команда> --help
```

| Команда | Что делает |
|---|---|
| `generate LANG CATEGORY LEMMA --features k=v[,k=v]` | Строит одну словоформу |
| `test [LANG] [--category C]` | Запускает эталонные тесты (все языки, если `LANG` не указан) |
| `lint LANG` | Проверяет файлы правил: ошибки разбора Clingo и необъявленные признаки |
| `new-rule LANG CATEGORY --template T ...` | Добавляет правило по шаблону (раздел 5) |
| `serve [--host H] [--port P]` | Запускает веб-интерфейс (раздел 3) |

Примеры с реальным выводом:

```
> python -m lingua_rules.cli.main generate en nouns cat --features number=plural
cats
> python -m lingua_rules.cli.main generate en nouns child --features number=plural
children

> python -m lingua_rules.cli.main test en
[PASS] cat {'number': 'plural'} expected='cats' actual='cats'
[PASS] cat {'number': 'singular'} expected='cat' actual='cat'
[PASS] child {'number': 'plural'} expected='children' actual='children'
...
21/21 passed

> python -m lingua_rules.cli.main lint en
en: no issues found
```

Ошибка выводится одной строкой, код завершения — 1:

```
> python -m lingua_rules.cli.main generate en nouns cat --features number=dual
error: unknown value 'dual' for dimension 'number' (declared: singular, plural)
```

> **Примечание.** `python -m lingua_rules` (без `.cli.main`) **не работает**:
> в пакете нет `__main__.py`. Всегда пишите `lingua_rules.cli.main`.

### Кодировка вывода

Командная строка всегда выводит текст в UTF-8, поэтому буквы вроде ä, ö, ü, ß
и кириллица работают везде — в окне консоли, при перенаправлении в файл и при
передаче другой программе, в том числе в Windows с устаревшей кодовой
страницей (например, 1251):

```
python -m lingua_rules.cli.main generate de nouns Mann --features number=plural > result.txt
```

В `result.txt` будет `Männer` (в UTF-8). Открывайте такие файлы в редакторе
как UTF-8.

---

## 3. Веб-интерфейс

```
python -m lingua_rules.cli.main serve
python -m lingua_rules.cli.main serve --host 0.0.0.0 --port 9000
python -m lingua_rules.cli.main serve --rules-dir D:\work\rules --tests-dir D:\work\tests
```

Затем откройте http://127.0.0.1:8000 (или выбранные адрес и порт).
Остановка — Ctrl+C.

Чтобы запустить интерфейс напрямую через uvicorn, задайте две переменные с
папками сами (веб-приложение читает их при каждом запросе; по умолчанию
`rules` и `tests`):

| Оболочка | Команда |
|---|---|
| PowerShell | `$env:LINGUA_RULES_DIR = "rules"; $env:LINGUA_TESTS_DIR = "tests"; python -m uvicorn lingua_rules.web.app:app --port 8000` |
| Linux / macOS | `LINGUA_RULES_DIR=rules LINGUA_TESTS_DIR=tests python -m uvicorn lingua_rules.web.app:app --port 8000` |

Что есть в интерфейсе (скриншоты — из примера в разделе 6; сам интерфейс на
английском):

**Languages (Языки)** — все языки из `rules/`, их части речи и ссылка на тесты.

![Страница языков](docs/images/01-index.png)

**Страница части речи** — словарь признаков и полный текст правил, со ссылками
*Try it* (попробовать), *Add a rule* (добавить правило) и *Run tests*
(запустить тесты).

![Страница части речи](docs/images/02-category-before.png)

**Try it (Попробовать)** — введите лемму, выберите значения признаков, нажмите
*Generate*. У каждого признака есть вариант *— not set —* («не задан»):
выберите его для признака, который эта часть речи не использует (например,
`tense` при проверке существительного), — тогда он не попадёт в запрос.

![Try it](docs/images/06-try-it-regular.png)

**Add a rule** добавляет правило по шаблону `regular-affix` (другие шаблоны в
форме недоступны — используйте командную строку). **Run tests** показывает
эталонные тесты таблицей. Обе страницы пошагово показаны в разделе 6.

---

## 4. Файлы правил

Каждый язык — это папка `rules/<код>/`:

| Файл | Содержимое |
|---|---|
| `lang.yaml` | `name`, необязательный `iso639_3` и список частей речи `categories` |
| `features.yaml` | `dimensions`: признаки и их допустимые значения |
| `<часть_речи>.lp` | Правила Clingo (Answer Set Programming) для этой части речи |

```yaml
# rules/en/lang.yaml
name: English
iso639_3: eng
categories:
  - nouns
```

```yaml
# rules/en/features.yaml
dimensions:
  number:
    values: [singular, plural]
```

```prolog
% rules/en/nouns.lp
form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma), not irregular(Lemma).

irregular("child").
form("child", "number=plural", "children").
```

Как вычисляется файл правил:

- Запрошенная лемма приходит в виде факта `input_lemma("cat")`.
- Каждое правило выводит `form(Lemma, FeatureKey, Form)`. Инструмент
  возвращает ту `Form`, у которой `Lemma` и `FeatureKey` совпадают с запросом.
- **Ключ признаков** — это строка из пар `признак=значение`, **упорядоченных
  по алфавиту по имени признака** и соединённых через `;`: например,
  `number=plural` или `case=genitive;number=plural`, когда признаков два.
  `new-rule` и веб-форма сами записывают ключ в этом порядке, как бы вы его ни
  ввели; `lint` сообщает о ключе с другим порядком в правилах, написанных
  вручную, и показывает правильный вариант.
- `irregular("x")` помечает лемму как исключение. Правила, оканчивающиеся на
  `not irregular(Lemma)`, её пропускают, поэтому её формы задаются явно.
- Страница части речи открывается только когда её файл `.lp` уже существует.

Строковые функции, которые можно вызывать из правил (в Clingo нет строковых
операций, поэтому это функции Python, вызываемые через `@`):

| Функция | Результат | Пример |
|---|---|---|
| `@suffix(Lemma, "s")` | лемма + суффикс | `cat` → `cats` |
| `@prefix(Lemma, "un")` | префикс + лемма | `happy` → `unhappy` |
| `@strip_suffix_add(Lemma, 2, "en")` | отбросить последние N букв и добавить строку | `Museum` → `Museen` |

---

## 5. Шаблоны правил

Шаблон — это готовый блок правила, который инструмент заполняет и **дописывает
в конец** файла `rules/<язык>/<часть_речи>.lp`. После этого это обычный
текст: его можно править или удалить, как любую другую строку файла.

Перед записью инструмент проверяет, что заданы все обязательные поля, что
признаки и их значения объявлены в `features.yaml` и что ни одно значение не
содержит перевода строки. Кавычки и обратные косые черты экранируются
автоматически.

### Доступные шаблоны

| Шаблон | Для чего | Обязательные поля | Параметры командной строки | Веб-интерфейс |
|---|---|---|---|---|
| `regular-affix` | Регулярное правило: добавить суффикс ко всем леммам, кроме исключений | ключ признаков, суффикс | `--feature-key`, `--suffix` | да (*Add a rule*) |
| `exception-override` | Одна нерегулярная лемма с явно заданной формой | лемма, ключ признаков, форма | `--lemma`, `--feature-key`, `--form` | нет |

**`regular-affix`**

```
python -m lingua_rules.cli.main new-rule nl nouns --template regular-affix --feature-key number=plural --suffix en
```

дописывает:

```prolog

% describe the paradigm this rule covers here
form(Lemma, "number=plural", @suffix(Lemma, "en")) :- input_lemma(Lemma), not irregular(Lemma).
```

Замените строку комментария кратким описанием парадигмы.

**`exception-override`**

```
python -m lingua_rules.cli.main new-rule nl nouns --template exception-override --feature-key number=plural --lemma kind --form kinderen
```

дописывает:

```prolog

irregular("kind").
form("kind", "number=plural", "kinderen").
```

`irregular("kind")` отключает для `kind` **все** правила, оканчивающиеся на
`not irregular(Lemma)`, а не только правило множественного числа. Если в языке
несколько регулярных правил, задайте нерегулярной лемме все формы, которые
дали бы эти правила (повторите команду с другими ключами признаков или
допишите строки `form(...)` вручную).

### Правила без шаблона

Всё, что не покрывают шаблоны, пишется в файле `.lp` вручную с помощью функций
из раздела 4. Например, изменение основы:

```prolog
% "Museum" -> "Museen": drop the last two letters ("um"), add "en".
irregular("Museum").
form("Museum", "number=plural", @strip_suffix_add("Museum", 2, "en")).
```

После ручной правки запустите `python -m lingua_rules.cli.main lint <язык>`.

---

## 6. Пример: добавление языка (нидерландский)

В этом примере добавляется новый язык — нидерландский (`nl`) — с одной частью
речи; используются оба шаблона и одно правило, написанное вручную. Ровно это
делает `docs/screenshots/capture.py` (во временной копии), чтобы снять
скриншоты; нидерландский здесь только пример и в правила репозитория не
входит.

**Шаг 1 — создайте файлы языка.**

`rules/nl/lang.yaml`

```yaml
name: Dutch
iso639_3: nld
categories:
  - nouns
```

`rules/nl/features.yaml`

```yaml
dimensions:
  number:
    values: [singular, plural]
```

`rules/nl/nouns.lp` — начните с единственного числа, которое совпадает с
леммой:

```prolog
% rules/nl/nouns.lp
% Dutch noun plurals. The singular is the lemma itself.

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
```

**Шаг 2 — добавьте нерегулярные формы множественного числа шаблоном
`exception-override`.**

```
python -m lingua_rules.cli.main new-rule nl nouns --template exception-override --feature-key number=plural --lemma kind --form kinderen
python -m lingua_rules.cli.main new-rule nl nouns --template exception-override --feature-key number=plural --lemma stad --form steden
```

Каждая команда выводит `appended exception-override scaffold to rules\nl\nouns.lp`.

**Шаг 3 — допишите правило вручную** в конец `rules/nl/nouns.lp`:

```prolog
% "museum" -> "musea": drop the last two letters ("um"), add "a".
irregular("museum").
form("museum", "number=plural", @strip_suffix_add("museum", 2, "a")).
```

Страница части речи теперь показывает файл:

![Страница части речи до регулярного правила](docs/images/02-category-before.png)

**Шаг 4 — добавьте регулярное множественное число через веб-форму** (`serve`,
затем *nl → nouns → Add a rule*). Форма сверяет ключ признаков с
`features.yaml`; необъявленное значение отклоняется:

![Отклонённое значение признака](docs/images/03-new-rule-error.png)

С правильным ключом (`number=plural`, суффикс `en`):

![Форма добавления правила](docs/images/04-new-rule-form.png)

После *Add rule* открывается страница части речи с новым блоком в конце
(аналог в командной строке — команда `regular-affix` из раздела 5):

![Страница части речи после добавления правила](docs/images/05-category-after.png)

**Шаг 5 — проверьте.** Регулярное существительное использует новое правило,
исключение — свою форму:

![Try it: boek](docs/images/06-try-it-regular.png)

![Try it: kind](docs/images/07-try-it-exception.png)

То же в командной строке:

```
> python -m lingua_rules.cli.main generate nl nouns boek --features number=plural
boeken
> python -m lingua_rules.cli.main generate nl nouns museum --features number=plural
musea
```

**Шаг 6 — добавьте эталонные тесты** в `tests/nl/nouns.paradigm.yaml` (формат —
в разделе 9) и запустите их: в командной строке
`python -m lingua_rules.cli.main test nl` или в интерфейсе через *Run tests*:

![Результаты тестов](docs/images/08-tests.png)

---

## 7. Изменение шаблонов

Изменить можно две разные вещи.

### 7.1 Изменить правило, которое шаблон уже записал

Откройте `rules/<язык>/<часть_речи>.lp` в любом текстовом редакторе и
исправьте блок. Шаблон нигде не запоминается; единственный источник правды —
сам файл. Затем запустите `lint` и `test`.

### 7.2 Изменить то, что пишет шаблон, или добавить новый шаблон

Шаблоны находятся в `src/lingua_rules/engine/templates.py`. Каждый — это
строка Python с подстановками `{поле}` плюс список обязательных полей:

```python
REGULAR_AFFIX_TEMPLATE = (
    "\n"
    "% describe the paradigm this rule covers here\n"
    'form(Lemma, "{feature_key}", @suffix(Lemma, "{suffix}")) :- '
    "input_lemma(Lemma), not irregular(Lemma).\n"
)

_TEMPLATES = {
    "regular-affix": REGULAR_AFFIX_TEMPLATE,
    "exception-override": EXCEPTION_OVERRIDE_TEMPLATE,
}

_TEMPLATE_REQUIRED_FIELDS = {
    "regular-affix": ("feature_key", "suffix"),
    "exception-override": ("lemma", "feature_key", "form"),
}
```

**Чтобы изменить существующий шаблон**, отредактируйте его строку — например,
строку комментария. Сохраните подстановки `{...}` и оставьте каждую из них
внутри кавычек `"..."` в тексте Clingo (значения экранируются для
использования внутри строки в кавычках). Изменение действует только на
правила, добавленные после него; существующие файлы `.lp` не переписываются.

**Чтобы добавить шаблон**, например `regular-prefix` для `happy` → `unhappy`:

1. В `src/lingua_rules/engine/templates.py` добавьте текст и зарегистрируйте
   шаблон:

   ```python
   REGULAR_PREFIX_TEMPLATE = (
       "\n"
       "% describe the paradigm this rule covers here\n"
       'form(Lemma, "{feature_key}", @prefix(Lemma, "{prefix}")) :- '
       "input_lemma(Lemma), not irregular(Lemma).\n"
   )

   _TEMPLATES = {
       "regular-affix": REGULAR_AFFIX_TEMPLATE,
       "exception-override": EXCEPTION_OVERRIDE_TEMPLATE,
       "regular-prefix": REGULAR_PREFIX_TEMPLATE,
   }

   _TEMPLATE_REQUIRED_FIELDS = {
       "regular-affix": ("feature_key", "suffix"),
       "exception-override": ("lemma", "feature_key", "form"),
       "regular-prefix": ("feature_key", "prefix"),
   }
   ```

2. В `src/lingua_rules/cli/main.py` добавьте команде `new-rule` параметр для
   нового поля и передайте его дальше:

   ```python
       suffix: str = typer.Option(None, "--suffix"),
       prefix: str = typer.Option(None, "--prefix"),
   ```

   ```python
       fields = {
           "feature_key": feature_key,
           "suffix": suffix,
           "prefix": prefix,
           "lemma": lemma,
           "form": form,
       }
   ```

3. Используйте его:

   ```
   > python -m lingua_rules.cli.main new-rule demo adjectives --template regular-prefix --feature-key polarity=negative --prefix un
   appended regular-prefix scaffold to rules\demo\adjectives.lp
   > python -m lingua_rules.cli.main generate demo adjectives happy --features polarity=negative
   unhappy
   ```

4. Запустите `python -m pytest` и добавьте тест нового шаблона в
   `tests_unit/engine/test_templates.py`.

Веб-форма (*Add a rule*) всегда использует `regular-affix`; чтобы предложить
в ней другой шаблон, нужно изменить `new_rule_submit` в
`src/lingua_rules/web/app.py` и `src/lingua_rules/web/templates/new_rule.html`.

---

## 8. Языки в репозитории

| Код | Язык | Часть речи | Признаки | Эталонных проверок |
|---|---|---|---|---|
| `en` | английский | nouns (существительные) | число | 21 |
| `de` | немецкий | nouns | число | 15 |
| `ru` | русский | nouns | падеж (6) × число | 84 |
| `fi` | финский | nouns | падеж (11) × число | 110 |

**Английский и немецкий** устроены по шаблонам: одно регулярное правило
(`-s`, `-e`), исключения через `exception-override` и несколько орфографически
обусловленных форм, написанных вручную с `@suffix` / `@strip_suffix_add`
(`city` → `cities`, `knife` → `knives`, `Museum` → `Museen`).

**Русский и финский** имеют полную парадигму у каждой леммы, поэтому их правила
работают через **класс словоизменения**. Правило не может посмотреть, как
пишется лемма, поэтому каждой лемме класс назначается фактом, а у каждого
класса есть по правилу на каждую форму падежа и числа:

```prolog
noun_class("школа", f_a).

form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, f_a).
```

Чтобы добавить слово существующего класса, допишите одну строку
`noun_class(...)`. Лемма без класса не даёт форм (`generate` сообщает
`no rule ... produced a form`). Нерегулярные слова (`ребёнок` → `дети`,
финское `vesi`) помечены `irregular(...)`, и все их формы перечислены. Классы
описаны в начале каждого `nouns.lp`:

- Русский: `m_hard` (стол), `f_a` (лампа), `n_o` (слово) — неодушевлённые
  существительные.
- Финский: `back_o` (talo, auto, kello), `front_ae` (kynä, päivä, kylä) — с
  гармонией гласных, без чередования ступеней согласных.

Каждое правило русского и финского использует оба признака, поэтому *Try it*
для них работает:

![Try it: русский](docs/images/09-try-it-russian.png)

```
> python -m lingua_rules.cli.main generate fi nouns talo --features case=inessive,number=plural
taloissa
```

---

## 9. Эталонные тесты

Каждый файл `tests/<язык>/<часть_речи>.paradigm.yaml` содержит один или
несколько YAML-документов, разделённых `---`, — по одному на лемму:

```yaml
lemma: boek
category: nouns
cases:
  - features: {number: singular}
    expected: boek
  - features: {number: plural}
    expected: boeken
---
lemma: kind
category: nouns
cases:
  - features: {number: plural}
    expected: kinderen
```

```
python -m lingua_rules.cli.main test nl
python -m lingua_rules.cli.main test nl --category nouns
python -m lingua_rules.cli.main test            # все языки из tests/
```

Модульные тесты самого инструмента запускаются командой `python -m pytest`.

---

## 10. Подводные камни и известные ограничения

- **Порядок признаков в ключе в правилах, написанных вручную.** Ключ должен
  быть упорядочен по имени признака (`number=plural;tense=past`). Шаблоны
  упорядочивают его сами; для правил, написанных вручную, запускайте `lint` —
  он сообщит о ключе с другим порядком, например:
  `[verbs] feature key 'tense=past;number=plural' is not in canonical order and will never match; write 'number=plural;tense=past'`.
- **`irregular` действует на лемму целиком** (см. раздел 5).
- **Try it при нескольких признаках.** Если части речи языка используют разные
  признаки (например, `number` у существительных и `number` с `tense` у
  глаголов), выбирайте *— not set —* для признаков, которые эта часть речи не
  использует.
- **Веб-форма добавляет только правила `regular-affix`**; для
  `exception-override` используйте `new-rule`.
- **Отмены нет.** Шаблоны дописывают текст в файл; ненужные блоки удаляйте,
  редактируя файл `.lp`.
- Если в файле языка ещё нет ни одного факта `irregular(...)`, перед
  результатом выводится безобидное сообщение Clingo
  (`info: atom does not occur in any rule head: irregular(Lemma)`).

---

## 11. Как обновить скриншоты

Скриншоты в `docs/images/` снимает Selenium с помощью
`docs/screenshots/capture.py`. Скрипт собирает нидерландский пример во
временной копии `rules/` и `tests/` (файлы репозитория не меняются), запускает
веб-интерфейс и снимает каждую страницу в браузере без окна.

```
python -m pip install -e ".[docs]"
python docs/screenshots/capture.py                 # Microsoft Edge
python docs/screenshots/capture.py --browser chrome
```

Selenium сам скачивает подходящий драйвер браузера.
