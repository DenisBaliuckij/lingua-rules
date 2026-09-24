"""Generate rules/ru/*.lp and their golden tests.

The rule files are written from the class/ending tables below; the golden
tests use full word forms typed out separately (EXPECTED_*).
Run from the repository root: python tools/gen_ru.py
"""

from pathlib import Path

R = Path("rules/ru")
T = Path("tests/ru")
CASES = ["nominative", "genitive", "dative", "accusative", "instrumental", "prepositional"]
OBL = ["nominative", "genitive", "dative", "instrumental", "prepositional"]  # without accusative
GENDERS = ["masculine", "feminine", "neuter"]
PERSONS = [("first", "singular"), ("second", "singular"), ("third", "singular"),
           ("first", "plural"), ("second", "plural"), ("third", "plural")]


def w(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8", newline="\n")


def facts(pred: str, table: dict) -> str:
    return "".join(" ".join(f'{pred}("{l}", {c}).' for l in ls) + "\n" for c, ls in table.items())


def head(strip: int, end: str) -> str:
    if strip == 0 and end == "":
        return "L"
    if strip == 0:
        return f'@suffix(L, "{end}")'
    return f'@strip_suffix_add(L, {strip}, "{end}")'


w(R / "lang.yaml", """name: Russian
iso639_3: rus
categories:
  - nouns
  - adjectives
  - verbs
  - pronouns
""")

w(R / "features.yaml", """dimensions:
  case:
    values: [nominative, genitive, dative, accusative, instrumental, prepositional]
  number:
    values: [singular, plural]
  gender:
    values: [masculine, feminine, neuter]
  animacy:
    values: [animate, inanimate]
  person:
    values: [first, second, third]
  verb_form:
    values: [infinitive, present, future, past, imperative]
  degree:
    values: [comparative]
""")

# ============================================================================= nouns
# class: gender, letters stripped from the lemma, singular endings (nom gen dat ins prep),
#        own accusative singular ending or None (= nominative / genitive by animacy),
#        plural endings (nom gen dat ins prep)
NOUN_CLASSES = {
    "m_hard":      ("masculine", 0, ["", "а", "у", "ом", "е"], None, ["ы", "ов", "ам", "ами", "ах"]),
    "m_velar":     ("masculine", 0, ["", "а", "у", "ом", "е"], None, ["и", "ов", "ам", "ами", "ах"]),
    "m_hush":      ("masculine", 0, ["", "а", "у", "ом", "е"], None, ["и", "ей", "ам", "ами", "ах"]),
    "m_soft":      ("masculine", 1, ["ь", "я", "ю", "ем", "е"], None, ["и", "ей", "ям", "ями", "ях"]),
    "m_soft_stressed": ("masculine", 1, ["ь", "я", "ю", "ём", "е"], None, ["и", "ей", "ям", "ями", "ях"]),
    "m_j":         ("masculine", 1, ["й", "я", "ю", "ем", "е"], None, ["и", "ев", "ям", "ями", "ях"]),
    "f_a":         ("feminine", 1, ["а", "ы", "е", "ой", "е"], "у", ["ы", "", "ам", "ами", "ах"]),
    "f_a_velar":   ("feminine", 1, ["а", "и", "е", "ой", "е"], "у", ["и", "", "ам", "ами", "ах"]),
    "f_a_hush":    ("feminine", 1, ["а", "и", "е", "ей", "е"], "у", ["и", "", "ам", "ами", "ах"]),
    "f_ya":        ("feminine", 1, ["я", "и", "е", "ей", "е"], "ю", ["и", "ь", "ям", "ями", "ях"]),
    "f_ija":       ("feminine", 2, ["ия", "ии", "ии", "ией", "ии"], "ию", ["ии", "ий", "иям", "иями", "иях"]),
    "f_soft":      ("feminine", 1, ["ь", "и", "и", "ью", "и"], None, ["и", "ей", "ям", "ями", "ях"]),
    "f_soft_hush": ("feminine", 1, ["ь", "и", "и", "ью", "и"], None, ["и", "ей", "ам", "ами", "ах"]),
    "n_o":         ("neuter", 1, ["о", "а", "у", "ом", "е"], None, ["а", "", "ам", "ами", "ах"]),
    "n_e":         ("neuter", 1, ["е", "я", "ю", "ем", "е"], None, ["я", "ей", "ям", "ями", "ях"]),
    "n_ie":        ("neuter", 1, ["е", "я", "ю", "ем", "и"], None, ["я", "й", "ям", "ями", "ях"]),
}
NOUN_MEMBERS = {
    "m_hard": ["стол", "журнал", "завод", "магазин", "телефон", "студент", "турист"],
    "m_velar": ["урок", "парк", "язык", "учебник", "мальчик"],
    "m_hush": ["карандаш", "нож", "этаж", "врач"],
    "m_soft": ["портфель", "гость"],
    "m_soft_stressed": ["словарь", "рубль", "король"],
    "m_j": ["музей", "трамвай", "герой"],
    "f_a": ["лампа", "школа", "комната", "газета", "машина", "мама"],
    "f_a_velar": ["книга", "рука", "нога", "собака"],
    "f_a_hush": ["задача", "дача", "встреча"],
    "f_ya": ["неделя", "дыня"],
    "f_ija": ["станция", "армия", "история"],
    "f_soft": ["дверь", "площадь", "тетрадь"],
    "f_soft_hush": ["ночь", "вещь", "речь"],
    "n_o": ["слово", "место", "дело", "вино"],
    "n_e": ["море", "поле"],
    "n_ie": ["здание", "упражнение", "занятие"],
}
ANIMATE = ["студент", "турист", "мальчик", "врач", "гость", "король", "герой", "мама", "собака"]
IRREGULAR_NOUNS = {  # singular (6 cases) | plural (6 cases)
    "ребёнок": "ребёнок ребёнка ребёнку ребёнка ребёнком ребёнке | дети детей детям детей детьми детях",
    "человек": "человек человека человеку человека человеком человеке | люди людей людям людей людьми людях",
    "мать": "мать матери матери мать матерью матери | матери матерей матерям матерей матерями матерях",
    "дочь": "дочь дочери дочери дочь дочерью дочери | дочери дочерей дочерям дочерей дочерьми дочерях",
    "время": "время времени времени время временем времени | времена времён временам времена временами временах",
    "имя": "имя имени имени имя именем имени | имена имён именам имена именами именах",
    "дом": "дом дома дому дом домом доме | дома домов домам дома домами домах",
    "город": "город города городу город городом городе | города городов городам города городами городах",
    "брат": "брат брата брату брата братом брате | братья братьев братьям братьев братьями братьях",
    "друг": "друг друга другу друга другом друге | друзья друзей друзьям друзей друзьями друзьях",
    "день": "день дня дню день днём дне | дни дней дням дни днями днях",
    "отец": "отец отца отцу отца отцом отце | отцы отцов отцам отцов отцами отцах",
    "сестра": "сестра сестры сестре сестру сестрой сестре | сёстры сестёр сёстрам сестёр сёстрами сёстрах",
    "окно": "окно окна окну окно окном окне | окна окон окнам окна окнами окнах",
}

n = ["""% rules/ru/nouns.lp
% Russian noun declension: 6 cases x 2 numbers (features: case, number).
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned a
% declension class with noun_class/2 (a lemma without a class produces no
% forms), and animate nouns are marked with animate/1.
%
% Classes (nominative singular -> genitive singular, nominative plural):
%   m_hard           стол -> стола, столы          m_velar   урок -> урока, уроки
%   m_hush           нож -> ножа, ножи (gen pl -ей) m_j       музей -> музея, музеи
%   m_soft           портфель -> портфеля (instr. -ем, unstressed)
%   m_soft_stressed  словарь -> словаря (instr. -ём, stressed)
%   f_a              лампа -> лампы, лампы         f_a_velar книга -> книги, книги
%   f_a_hush         задача -> задачи (instr. -ей)  f_ya      неделя -> недели, недель
%   f_ija            станция -> станции, станций
%   f_soft           дверь -> двери, дверям        f_soft_hush ночь -> ночи, ночам
%   n_o              слово -> слова, слов          n_e       море -> моря, морей
%   n_ie             здание -> здания, зданий (prep. sg. -ии)
%
% Accusative: feminine -а/-я nouns have their own ending (лампу, неделю);
% otherwise the accusative equals the nominative, or the genitive for animate
% masculine nouns in the singular and for all animate nouns in the plural
% (студента, студентов; мам, собак).
% Nouns with stem changes (ребёнок/дети, мать/матери, день/дня) are irregular
% and list all 12 forms.
%
% Not covered: fleeting vowels in regular classes (only in listed nouns),
% stress-dependent endings other than -ем/-ём, second genitive/locative
% (чашка чаю, в лесу), and nouns in -ц (улица -> улицей).

"""]
for cls, (gender, strip, sg, acc, pl) in NOUN_CLASSES.items():
    n.append(f"% --- {cls}\n")
    n.append(f"class_gender({cls}, {gender}).\n")
    for number, ends in (("singular", sg), ("plural", pl)):
        for case, end in zip(OBL, ends):
            n.append(f'form(L, "case={case};number={number}", {head(strip, end)}) :- input_lemma(L), noun_class(L, {cls}).\n')
    if acc is not None:
        n.append(f'form(L, "case=accusative;number=singular", {head(strip, acc)}) :- input_lemma(L), noun_class(L, {cls}).\n')
    else:
        n.append(f"acc_from_nominative({cls}).\n")
    n.append("\n")
n.append("""% --- accusative derived from the nominative or the genitive
form(L, "case=accusative;number=singular", F) :- noun_class(L, C), acc_from_nominative(C),
    not animate_masculine(L), form(L, "case=nominative;number=singular", F).
form(L, "case=accusative;number=singular", F) :- animate_masculine(L), form(L, "case=genitive;number=singular", F).
animate_masculine(L) :- animate(L), noun_class(L, C), class_gender(C, masculine).
form(L, "case=accusative;number=plural", F) :- noun_class(L, _), not animate(L), form(L, "case=nominative;number=plural", F).
form(L, "case=accusative;number=plural", F) :- noun_class(L, _), animate(L), form(L, "case=genitive;number=plural", F).

% --- class membership and animacy
""")
n.append(facts("noun_class", NOUN_MEMBERS))
n.append(" ".join(f'animate("{l}").' for l in ANIMATE) + "\n")
n.append("\n% --- irregular nouns (all forms listed)\n")
for lemma, forms in IRREGULAR_NOUNS.items():
    sg, pl = (p.split() for p in forms.split("|"))
    n.append(f'irregular("{lemma}").\n')
    for number, fs in (("singular", sg), ("plural", pl)):
        n.append(" ".join(f'form("{lemma}", "case={c};number={number}", "{f}").' for c, f in zip(CASES, fs)) + "\n")
w(R / "nouns.lp", "".join(n))

# ============================================================================= adjectives
# strip 2 letters from the lemma (masculine nominative), then add:
# per gender (nom gen dat ins prep) + own feminine accusative; plural (nom gen dat ins prep)
ADJ_CLASSES = {
    "hard": ({"masculine": ["", "ого", "ому", "ым", "ом"], "feminine": ["ая", "ой", "ой", "ой", "ой"],
              "neuter": ["ое", "ого", "ому", "ым", "ом"]}, "ую", ["ые", "ых", "ым", "ыми", "ых"]),
    "soft": ({"masculine": ["", "его", "ему", "им", "ем"], "feminine": ["яя", "ей", "ей", "ей", "ей"],
              "neuter": ["ее", "его", "ему", "им", "ем"]}, "юю", ["ие", "их", "им", "ими", "их"]),
    "velar": ({"masculine": ["", "ого", "ому", "им", "ом"], "feminine": ["ая", "ой", "ой", "ой", "ой"],
               "neuter": ["ое", "ого", "ому", "им", "ом"]}, "ую", ["ие", "их", "им", "ими", "их"]),
    "hush": ({"masculine": ["", "его", "ему", "им", "ем"], "feminine": ["ая", "ей", "ей", "ей", "ей"],
              "neuter": ["ее", "его", "ему", "им", "ем"]}, "ую", ["ие", "их", "им", "ими", "их"]),
}
ADJ_MEMBERS = {
    "hard": ["новый", "красивый", "старый", "белый", "молодой", "простой", "интересный"],
    "soft": ["синий", "последний", "летний", "зимний"],
    "velar": ["русский", "маленький", "высокий", "лёгкий", "дорогой", "большой", "другой"],
    "hush": ["хороший", "свежий", "общий"],
}
COMPARATIVE_LISTED = {
    "хороший": "лучше", "плохой": "хуже", "большой": "больше", "маленький": "меньше", "молодой": "моложе",
    "старый": "старше", "высокий": "выше", "дорогой": "дороже", "простой": "проще", "лёгкий": "легче",
}
a = ["""% rules/ru/adjectives.lp
% Russian adjectives (features: case, gender, number, animacy; degree).
% The lemma is the masculine nominative singular; the endings replace its last
% two letters (-ый, -ий, -ой). Classes (adj_class/2):
%   hard   новый   -> нового, новому, новым; новая; новые    (also молодой)
%   soft   синий   -> синего, синему, синим; синяя; синие
%   velar  русский -> русского, русским; русская; русские    (also большой, дорогой)
%   hush   хороший -> хорошего, хорошим; хорошая; хорошие
% Keys: "case=...;gender=...;number=singular", "case=...;number=plural"; the
% masculine singular and plural accusative depend on animacy:
% "animacy=animate;case=accusative;gender=masculine;number=singular" (нового),
% "animacy=inanimate;..." (новый). The neuter accusative equals the nominative.
% Comparative: hard and soft adjectives take -ее (новее, синее); others are
% listed (хороший -> лучше).
%
% Not covered: short forms (нов, нова), superlative (новейший, самый новый),
% the alternative instrumental -ою/-ею.

"""]
for cls, (per_gender, f_acc, pl) in ADJ_CLASSES.items():
    a.append(f"% --- {cls}\n")
    for gender in GENDERS:
        for case, end in zip(OBL, per_gender[gender]):
            a.append(f'form(L, "case={case};gender={gender};number=singular", {head(0, "") if end == "" else head(2, end)}) :- input_lemma(L), adj_class(L, {cls}).\n')
    a.append(f'form(L, "case=accusative;gender=feminine;number=singular", {head(2, f_acc)}) :- input_lemma(L), adj_class(L, {cls}).\n')
    for case, end in zip(OBL, pl):
        a.append(f'form(L, "case={case};number=plural", {head(2, end)}) :- input_lemma(L), adj_class(L, {cls}).\n')
    a.append("\n")
a.append("""% --- accusative: neuter = nominative; masculine singular and plural by animacy
form(L, "case=accusative;gender=neuter;number=singular", F) :- adj_class(L, _), form(L, "case=nominative;gender=neuter;number=singular", F).
form(L, "animacy=inanimate;case=accusative;gender=masculine;number=singular", F) :- adj_class(L, _), form(L, "case=nominative;gender=masculine;number=singular", F).
form(L, "animacy=animate;case=accusative;gender=masculine;number=singular", F) :- adj_class(L, _), form(L, "case=genitive;gender=masculine;number=singular", F).
form(L, "animacy=inanimate;case=accusative;number=plural", F) :- adj_class(L, _), form(L, "case=nominative;number=plural", F).
form(L, "animacy=animate;case=accusative;number=plural", F) :- adj_class(L, _), form(L, "case=genitive;number=plural", F).

% --- comparative
listed_comparative(L) :- comparative(L, _).
form(L, "degree=comparative", F) :- input_lemma(L), comparative(L, F).
form(L, "degree=comparative", @strip_suffix_add(L, 2, "ее")) :- input_lemma(L), adj_class(L, hard), not listed_comparative(L).
form(L, "degree=comparative", @strip_suffix_add(L, 2, "ее")) :- input_lemma(L), adj_class(L, soft), not listed_comparative(L).

% --- class membership
""")
a.append(facts("adj_class", ADJ_MEMBERS))
a.append(" ".join(f'comparative("{l}", "{c}").' for l, c in COMPARATIVE_LISTED.items()) + "\n")
w(R / "adjectives.lp", "".join(a))

# ============================================================================= verbs
# class: letters stripped for the present stem, present endings (6), past-stem strip,
#        imperative endings (sg, pl) on the present stem
VERB_CLASSES = {
    "conj1_aj": (2, ["ю", "ешь", "ет", "ем", "ете", "ют"], ["й", "йте"]),
    "conj1_ova": (5, ["ую", "уешь", "ует", "уем", "уете", "уют"], ["уй", "уйте"]),
    "conj2": (3, ["ю", "ишь", "ит", "им", "ите", "ят"], ["и", "ите"]),
    "conj2_hush": (3, ["у", "ишь", "ит", "им", "ите", "ат"], ["и", "ите"]),
}
VERB_MEMBERS = {
    "conj1_aj": ["читать", "делать", "знать", "играть", "слушать", "отвечать", "понимать", "гулять", "думать", "уметь", "иметь"],
    "conj1_ova": ["рисовать", "организовать", "фотографировать", "советовать"],
    "conj2": ["говорить", "звонить", "курить", "помнить", "смотреть"],
    "conj2_hush": ["учить", "спешить"],
}
IRREGULAR_VERBS = {  # present (6) | past m f n pl | imperative sg pl (or -)
    "хотеть": "хочу хочешь хочет хотим хотите хотят | хотел хотела хотело хотели | -",
    "есть": "ем ешь ест едим едите едят | ел ела ело ели | ешь ешьте",
    "идти": "иду идёшь идёт идём идёте идут | шёл шла шло шли | иди идите",
    "мочь": "могу можешь может можем можете могут | мог могла могло могли | -",
    "жить": "живу живёшь живёт живём живёте живут | жил жила жило жили | живи живите",
    "писать": "пишу пишешь пишет пишем пишете пишут | писал писала писало писали | пиши пишите",
    "любить": "люблю любишь любит любим любите любят | любил любила любило любили | люби любите",
    "видеть": "вижу видишь видит видим видите видят | видел видела видело видели | -",
    "давать": "даю даёшь даёт даём даёте дают | давал давала давало давали | давай давайте",
    "вставать": "встаю встаёшь встаёт встаём встаёте встают | вставал вставала вставало вставали | вставай вставайте",
    "брать": "беру берёшь берёт берём берёте берут | брал брала брало брали | бери берите",
    "пить": "пью пьёшь пьёт пьём пьёте пьют | пил пила пило пили | пей пейте",
    "спать": "сплю спишь спит спим спите спят | спал спала спало спали | спи спите",
    "ехать": "еду едешь едет едем едете едут | ехал ехала ехало ехали | -",
    "стоять": "стою стоишь стоит стоим стоите стоят | стоял стояла стояло стояли | стой стойте",
    "сидеть": "сижу сидишь сидит сидим сидите сидят | сидел сидела сидело сидели | сиди сидите",
    "танцевать": "танцую танцуешь танцует танцуем танцуете танцуют | танцевал танцевала танцевало танцевали | танцуй танцуйте",
}


def pkey(person, number, vf):
    return f"number={number};person={person};verb_form={vf}"


PAST = [("masculine", "л"), ("feminine", "ла"), ("neuter", "ло")]
v = ["""% rules/ru/verbs.lp
% Russian verbs (features: verb_form, person, number, gender): infinitive,
% present (for perfective verbs this is the future), past, imperative.
% Classes (verb_class/2):
%   conj1_aj    читать   -> читаю, читаешь ... читают; читал; читай   (also -ять, -еть: гулять, уметь)
%   conj1_ova   рисовать -> рисую, рисуешь ... рисуют; рисовал; рисуй
%   conj2       говорить -> говорю, говоришь ... говорят; говорил; говори  (also смотреть)
%   conj2_hush  учить    -> учу, учишь ... учат (stem in ж/ч/ш/щ)
% The past tense is the infinitive without -ть plus -л/-ла/-ло/-ли.
% Past keys: "gender=...;number=singular;verb_form=past", "number=plural;verb_form=past".
% Irregular verbs list all forms; "быть" has past, future and imperative.
%
% Not covered: consonant alternations in regular classes (любить -> люблю is
% listed), aspect pairs, participles and gerunds, reflexive -ся verbs.

form(L, "verb_form=infinitive", L) :- input_lemma(L).
past_stem(L, @strip_suffix_add(L, 2, "")) :- input_lemma(L), verb_class(L, _).
form(L, "gender=masculine;number=singular;verb_form=past", @suffix(S, "л")) :- past_stem(L, S).
form(L, "gender=feminine;number=singular;verb_form=past", @suffix(S, "ла")) :- past_stem(L, S).
form(L, "gender=neuter;number=singular;verb_form=past", @suffix(S, "ло")) :- past_stem(L, S).
form(L, "number=plural;verb_form=past", @suffix(S, "ли")) :- past_stem(L, S).

"""]
for cls, (strip, pres, imp) in VERB_CLASSES.items():
    v.append(f"% --- {cls}\n")
    for (person, number), end in zip(PERSONS, pres):
        v.append(f'form(L, "{pkey(person, number, "present")}", {head(strip, end)}) :- input_lemma(L), verb_class(L, {cls}).\n')
    for number, end in zip(("singular", "plural"), imp):
        v.append(f'form(L, "number={number};verb_form=imperative", {head(strip, end)}) :- input_lemma(L), verb_class(L, {cls}).\n')
    v.append("\n")
v.append("% --- class membership\n" + facts("verb_class", VERB_MEMBERS))
v.append("""
% --- быть: no present tense
irregular("быть").
form("быть", "gender=masculine;number=singular;verb_form=past", "был"). form("быть", "gender=feminine;number=singular;verb_form=past", "была").
form("быть", "gender=neuter;number=singular;verb_form=past", "было"). form("быть", "number=plural;verb_form=past", "были").
""")
for (person, number), f in zip(PERSONS, "буду будешь будет будем будете будут".split()):
    v.append(f'form("быть", "{pkey(person, number, "future")}", "{f}").\n')
v.append('form("быть", "number=singular;verb_form=imperative", "будь"). form("быть", "number=plural;verb_form=imperative", "будьте").\n')
v.append("\n% --- irregular verbs (all forms listed)\n")
for lemma, forms in IRREGULAR_VERBS.items():
    pres, past, imp = (p.split() for p in forms.split("|"))
    v.append(f'irregular("{lemma}").\n')
    v.append(" ".join(f'form("{lemma}", "{pkey(p, nb, "present")}", "{f}").' for (p, nb), f in zip(PERSONS, pres)) + "\n")
    v.append(" ".join(f'form("{lemma}", "gender={g};number=singular;verb_form=past", "{f}").' for (g, _), f in zip(PAST, past[:3])))
    v.append(f' form("{lemma}", "number=plural;verb_form=past", "{past[3]}").\n')
    if imp != ["-"]:
        v.append(f'form("{lemma}", "number=singular;verb_form=imperative", "{imp[0]}"). form("{lemma}", "number=plural;verb_form=imperative", "{imp[1]}").\n')
w(R / "verbs.lp", "".join(v))

# ============================================================================= pronouns
PRON = [
    ("я", "singular", "я меня мне меня мной мне"), ("ты", "singular", "ты тебя тебе тебя тобой тебе"),
    ("он", "singular", "он его ему его им нём"), ("она", "singular", "она её ей её ей ней"),
    ("оно", "singular", "оно его ему его им нём"), ("мы", "plural", "мы нас нам нас нами нас"),
    ("вы", "plural", "вы вас вам вас вами вас"), ("они", "plural", "они их им их ими них"),
]
pr = ["""% rules/ru/pronouns.lp
% Russian personal pronouns (features: case, number). The lemma is the
% nominative. Third-person forms after prepositions take н- (к нему, с ней); the
% prepositional case is always used with a preposition and is listed with н-.
% Every form is listed.

"""]
for lemma, number, forms in PRON:
    pr.append(" ".join(f'form("{lemma}", "case={c};number={number}", "{f}").' for c, f in zip(CASES, forms.split())) + "\n")
w(R / "pronouns.lp", "".join(pr))


# ============================================================================= golden tests (typed separately)

def q(value: str) -> str:
    """Quote a YAML scalar that would not read back as the same string (e.g. "on", "no")."""
    import json
    import yaml
    return value if yaml.safe_load(value) == value else json.dumps(value, ensure_ascii=False)

def doc(lemma, category, cases):
    lines = [f"lemma: {lemma}", f"category: {category}", "cases:"]
    for feats, expected in cases:
        f = ", ".join(f"{k}: {v}" for k, v in feats.items())
        lines += [f"  - features: {{{f}}}", f"    expected: {q(expected)}"]
    return "\n".join(lines) + "\n"


EXPECTED_NOUNS = {  # 6 cases sg | 6 cases pl (nom gen dat acc ins prep)
    "стол": "стол стола столу стол столом столе | столы столов столам столы столами столах",
    "журнал": "журнал журнала журналу журнал журналом журнале | журналы журналов журналам журналы журналами журналах",
    "студент": "студент студента студенту студента студентом студенте | студенты студентов студентам студентов студентами студентах",
    "урок": "урок урока уроку урок уроком уроке | уроки уроков урокам уроки уроками уроках",
    "мальчик": "мальчик мальчика мальчику мальчика мальчиком мальчике | мальчики мальчиков мальчикам мальчиков мальчиками мальчиках",
    "нож": "нож ножа ножу нож ножом ноже | ножи ножей ножам ножи ножами ножах",
    "врач": "врач врача врачу врача врачом враче | врачи врачей врачам врачей врачами врачах",
    "портфель": "портфель портфеля портфелю портфель портфелем портфеле | портфели портфелей портфелям портфели портфелями портфелях",
    "гость": "гость гостя гостю гостя гостем госте | гости гостей гостям гостей гостями гостях",
    "словарь": "словарь словаря словарю словарь словарём словаре | словари словарей словарям словари словарями словарях",
    "музей": "музей музея музею музей музеем музее | музеи музеев музеям музеи музеями музеях",
    "герой": "герой героя герою героя героем герое | герои героев героям героев героями героях",
    "лампа": "лампа лампы лампе лампу лампой лампе | лампы ламп лампам лампы лампами лампах",
    "школа": "школа школы школе школу школой школе | школы школ школам школы школами школах",
    "мама": "мама мамы маме маму мамой маме | мамы мам мамам мам мамами мамах",
    "книга": "книга книги книге книгу книгой книге | книги книг книгам книги книгами книгах",
    "собака": "собака собаки собаке собаку собакой собаке | собаки собак собакам собак собаками собаках",
    "задача": "задача задачи задаче задачу задачей задаче | задачи задач задачам задачи задачами задачах",
    "неделя": "неделя недели неделе неделю неделей неделе | недели недель неделям недели неделями неделях",
    "станция": "станция станции станции станцию станцией станции | станции станций станциям станции станциями станциях",
    "дверь": "дверь двери двери дверь дверью двери | двери дверей дверям двери дверями дверях",
    "ночь": "ночь ночи ночи ночь ночью ночи | ночи ночей ночам ночи ночами ночах",
    "слово": "слово слова слову слово словом слове | слова слов словам слова словами словах",
    "море": "море моря морю море морем море | моря морей морям моря морями морях",
    "здание": "здание здания зданию здание зданием здании | здания зданий зданиям здания зданиями зданиях",
    "ребёнок": "ребёнок ребёнка ребёнку ребёнка ребёнком ребёнке | дети детей детям детей детьми детях",
    "мать": "мать матери матери мать матерью матери | матери матерей матерям матерей матерями матерях",
    "время": "время времени времени время временем времени | времена времён временам времена временами временах",
    "день": "день дня дню день днём дне | дни дней дням дни днями днях",
    "брат": "брат брата брату брата братом брате | братья братьев братьям братьев братьями братьях",
    "окно": "окно окна окну окно окном окне | окна окон окнам окна окнами окнах",
}
docs = []
for lemma, forms in EXPECTED_NOUNS.items():
    sg, pl = (p.split() for p in forms.split("|"))
    cases = [({"case": c, "number": "singular"}, f) for c, f in zip(CASES, sg)]
    cases += [({"case": c, "number": "plural"}, f) for c, f in zip(CASES, pl)]
    docs.append(doc(lemma, "nouns", cases))
w(T / "nouns.paradigm.yaml", "---\n".join(docs))

EXPECTED_ADJ = {  # masc: nom gen dat acc_inan acc_anim ins prep / fem: nom gen dat acc ins prep /
                  # neut: nom gen dat acc ins prep / pl: nom gen dat acc_inan acc_anim ins prep / comparative
    "новый": "новый нового новому новый нового новым новом / новая новой новой новую новой новой / новое нового новому новое новым новом / новые новых новым новые новых новыми новых / новее",
    "молодой": "молодой молодого молодому молодой молодого молодым молодом / молодая молодой молодой молодую молодой молодой / молодое молодого молодому молодое молодым молодом / молодые молодых молодым молодые молодых молодыми молодых / моложе",
    "синий": "синий синего синему синий синего синим синем / синяя синей синей синюю синей синей / синее синего синему синее синим синем / синие синих синим синие синих синими синих / синее",
    "русский": "русский русского русскому русский русского русским русском / русская русской русской русскую русской русской / русское русского русскому русское русским русском / русские русских русским русские русских русскими русских / -",
    "большой": "большой большого большому большой большого большим большом / большая большой большой большую большой большой / большое большого большому большое большим большом / большие больших большим большие больших большими больших / больше",
    "хороший": "хороший хорошего хорошему хороший хорошего хорошим хорошем / хорошая хорошей хорошей хорошую хорошей хорошей / хорошее хорошего хорошему хорошее хорошим хорошем / хорошие хороших хорошим хорошие хороших хорошими хороших / лучше",
}
docs = []
for lemma, table in EXPECTED_ADJ.items():
    m, f, nt, pl, comp = (g.split() for g in table.split("/"))
    cases = []
    for case, form in zip(["nominative", "genitive", "dative"], m[:3]):
        cases.append(({"case": case, "gender": "masculine", "number": "singular"}, form))
    cases.append(({"animacy": "inanimate", "case": "accusative", "gender": "masculine", "number": "singular"}, m[3]))
    cases.append(({"animacy": "animate", "case": "accusative", "gender": "masculine", "number": "singular"}, m[4]))
    cases += [({"case": c, "gender": "masculine", "number": "singular"}, x) for c, x in zip(["instrumental", "prepositional"], m[5:])]
    for gender, fs in (("feminine", f), ("neuter", nt)):
        cases += [({"case": c, "gender": gender, "number": "singular"}, x) for c, x in zip(CASES, fs)]
    cases += [({"case": c, "number": "plural"}, x) for c, x in zip(["nominative", "genitive", "dative"], pl[:3])]
    cases.append(({"animacy": "inanimate", "case": "accusative", "number": "plural"}, pl[3]))
    cases.append(({"animacy": "animate", "case": "accusative", "number": "plural"}, pl[4]))
    cases += [({"case": c, "number": "plural"}, x) for c, x in zip(["instrumental", "prepositional"], pl[5:])]
    if comp != ["-"]:
        cases.append(({"degree": "comparative"}, comp[0]))
    docs.append(doc(lemma, "adjectives", cases))
w(T / "adjectives.paradigm.yaml", "---\n".join(docs))

EXPECTED_VERBS = {  # present (6) | past m f n pl | imperative sg pl
    "читать": "читаю читаешь читает читаем читаете читают | читал читала читало читали | читай читайте",
    "гулять": "гуляю гуляешь гуляет гуляем гуляете гуляют | гулял гуляла гуляло гуляли | гуляй гуляйте",
    "уметь": "умею умеешь умеет умеем умеете умеют | умел умела умело умели | умей умейте",
    "рисовать": "рисую рисуешь рисует рисуем рисуете рисуют | рисовал рисовала рисовало рисовали | рисуй рисуйте",
    "говорить": "говорю говоришь говорит говорим говорите говорят | говорил говорила говорило говорили | говори говорите",
    "смотреть": "смотрю смотришь смотрит смотрим смотрите смотрят | смотрел смотрела смотрело смотрели | смотри смотрите",
    "учить": "учу учишь учит учим учите учат | учил учила учило учили | учи учите",
    "хотеть": "хочу хочешь хочет хотим хотите хотят | хотел хотела хотело хотели | -",
    "идти": "иду идёшь идёт идём идёте идут | шёл шла шло шли | иди идите",
    "писать": "пишу пишешь пишет пишем пишете пишут | писал писала писало писали | пиши пишите",
    "пить": "пью пьёшь пьёт пьём пьёте пьют | пил пила пило пили | пей пейте",
    "мочь": "могу можешь может можем можете могут | мог могла могло могли | -",
}
docs = []
for lemma, forms in EXPECTED_VERBS.items():
    pres, past, imp = (p.split() for p in forms.split("|"))
    cases = [({"verb_form": "infinitive"}, lemma)]
    cases += [({"number": nb, "person": p, "verb_form": "present"}, f) for (p, nb), f in zip(PERSONS, pres)]
    cases += [({"gender": g, "number": "singular", "verb_form": "past"}, f) for g, f in zip(GENDERS, past[:3])]
    cases.append(({"number": "plural", "verb_form": "past"}, past[3]))
    if imp != ["-"]:
        cases += [({"number": "singular", "verb_form": "imperative"}, imp[0]),
                  ({"number": "plural", "verb_form": "imperative"}, imp[1])]
    docs.append(doc(lemma, "verbs", cases))
docs.append(doc("быть", "verbs",
                [({"verb_form": "infinitive"}, "быть")]
                + [({"number": nb, "person": p, "verb_form": "future"}, f)
                   for (p, nb), f in zip(PERSONS, "буду будешь будет будем будете будут".split())]
                + [({"gender": g, "number": "singular", "verb_form": "past"}, f) for g, f in zip(GENDERS, ["был", "была", "было"])]
                + [({"number": "plural", "verb_form": "past"}, "были"),
                   ({"number": "singular", "verb_form": "imperative"}, "будь"),
                   ({"number": "plural", "verb_form": "imperative"}, "будьте")]))
w(T / "verbs.paradigm.yaml", "---\n".join(docs))

docs = [doc(l, "pronouns", [({"case": c, "number": nb}, f) for c, f in zip(CASES, fs.split())]) for l, nb, fs in PRON]
w(T / "pronouns.paradigm.yaml", "---\n".join(docs))
print("ru: rules and tests written")
