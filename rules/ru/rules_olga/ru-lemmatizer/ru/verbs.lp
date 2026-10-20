% rules/ru/verbs.lp
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

% --- conj1_aj
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 2, "ю")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 2, "ешь")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 2, "ет")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 2, "ем")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 2, "ете")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 2, "ют")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 2, "й")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 2, "йте")) :- input_lemma(L), verb_class(L, conj1_aj).

% --- conj1_ova
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 5, "ую")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 5, "уешь")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 5, "ует")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 5, "уем")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 5, "уете")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 5, "уют")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 5, "уй")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 5, "уйте")) :- input_lemma(L), verb_class(L, conj1_ova).

% --- conj2
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 3, "ю")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 3, "ишь")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 3, "ит")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 3, "им")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 3, "ят")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 3, "и")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2).

% --- conj2_hush
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 3, "у")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 3, "ишь")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 3, "ит")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 3, "им")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 3, "ат")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 3, "и")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2_hush).

% --- class membership
verb_class("читать", conj1_aj). verb_class("делать", conj1_aj). verb_class("знать", conj1_aj). verb_class("играть", conj1_aj). verb_class("слушать", conj1_aj). verb_class("отвечать", conj1_aj). verb_class("понимать", conj1_aj). verb_class("гулять", conj1_aj). verb_class("думать", conj1_aj). verb_class("уметь", conj1_aj). verb_class("иметь", conj1_aj).
verb_class("рисовать", conj1_ova). verb_class("организовать", conj1_ova). verb_class("фотографировать", conj1_ova). verb_class("советовать", conj1_ova).
verb_class("говорить", conj2). verb_class("звонить", conj2). verb_class("курить", conj2). verb_class("помнить", conj2). verb_class("смотреть", conj2).
verb_class("учить", conj2_hush). verb_class("спешить", conj2_hush).

% --- быть: no present tense
irregular("быть").
form("быть", "gender=masculine;number=singular;verb_form=past", "был"). form("быть", "gender=feminine;number=singular;verb_form=past", "была").
form("быть", "gender=neuter;number=singular;verb_form=past", "было"). form("быть", "number=plural;verb_form=past", "были").
form("быть", "number=singular;person=first;verb_form=future", "буду").
form("быть", "number=singular;person=second;verb_form=future", "будешь").
form("быть", "number=singular;person=third;verb_form=future", "будет").
form("быть", "number=plural;person=first;verb_form=future", "будем").
form("быть", "number=plural;person=second;verb_form=future", "будете").
form("быть", "number=plural;person=third;verb_form=future", "будут").
form("быть", "number=singular;verb_form=imperative", "будь"). form("быть", "number=plural;verb_form=imperative", "будьте").

% --- irregular verbs (all forms listed)
irregular("хотеть").
form("хотеть", "number=singular;person=first;verb_form=present", "хочу"). form("хотеть", "number=singular;person=second;verb_form=present", "хочешь"). form("хотеть", "number=singular;person=third;verb_form=present", "хочет"). form("хотеть", "number=plural;person=first;verb_form=present", "хотим"). form("хотеть", "number=plural;person=second;verb_form=present", "хотите"). form("хотеть", "number=plural;person=third;verb_form=present", "хотят").
form("хотеть", "gender=masculine;number=singular;verb_form=past", "хотел"). form("хотеть", "gender=feminine;number=singular;verb_form=past", "хотела"). form("хотеть", "gender=neuter;number=singular;verb_form=past", "хотело"). form("хотеть", "number=plural;verb_form=past", "хотели").
irregular("есть").
form("есть", "number=singular;person=first;verb_form=present", "ем"). form("есть", "number=singular;person=second;verb_form=present", "ешь"). form("есть", "number=singular;person=third;verb_form=present", "ест"). form("есть", "number=plural;person=first;verb_form=present", "едим"). form("есть", "number=plural;person=second;verb_form=present", "едите"). form("есть", "number=plural;person=third;verb_form=present", "едят").
form("есть", "gender=masculine;number=singular;verb_form=past", "ел"). form("есть", "gender=feminine;number=singular;verb_form=past", "ела"). form("есть", "gender=neuter;number=singular;verb_form=past", "ело"). form("есть", "number=plural;verb_form=past", "ели").
form("есть", "number=singular;verb_form=imperative", "ешь"). form("есть", "number=plural;verb_form=imperative", "ешьте").
irregular("идти").
form("идти", "number=singular;person=first;verb_form=present", "иду"). form("идти", "number=singular;person=second;verb_form=present", "идёшь"). form("идти", "number=singular;person=third;verb_form=present", "идёт"). form("идти", "number=plural;person=first;verb_form=present", "идём"). form("идти", "number=plural;person=second;verb_form=present", "идёте"). form("идти", "number=plural;person=third;verb_form=present", "идут").
form("идти", "gender=masculine;number=singular;verb_form=past", "шёл"). form("идти", "gender=feminine;number=singular;verb_form=past", "шла"). form("идти", "gender=neuter;number=singular;verb_form=past", "шло"). form("идти", "number=plural;verb_form=past", "шли").
form("идти", "number=singular;verb_form=imperative", "иди"). form("идти", "number=plural;verb_form=imperative", "идите").
irregular("мочь").
form("мочь", "number=singular;person=first;verb_form=present", "могу"). form("мочь", "number=singular;person=second;verb_form=present", "можешь"). form("мочь", "number=singular;person=third;verb_form=present", "может"). form("мочь", "number=plural;person=first;verb_form=present", "можем"). form("мочь", "number=plural;person=second;verb_form=present", "можете"). form("мочь", "number=plural;person=third;verb_form=present", "могут").
form("мочь", "gender=masculine;number=singular;verb_form=past", "мог"). form("мочь", "gender=feminine;number=singular;verb_form=past", "могла"). form("мочь", "gender=neuter;number=singular;verb_form=past", "могло"). form("мочь", "number=plural;verb_form=past", "могли").
irregular("жить").
form("жить", "number=singular;person=first;verb_form=present", "живу"). form("жить", "number=singular;person=second;verb_form=present", "живёшь"). form("жить", "number=singular;person=third;verb_form=present", "живёт"). form("жить", "number=plural;person=first;verb_form=present", "живём"). form("жить", "number=plural;person=second;verb_form=present", "живёте"). form("жить", "number=plural;person=third;verb_form=present", "живут").
form("жить", "gender=masculine;number=singular;verb_form=past", "жил"). form("жить", "gender=feminine;number=singular;verb_form=past", "жила"). form("жить", "gender=neuter;number=singular;verb_form=past", "жило"). form("жить", "number=plural;verb_form=past", "жили").
form("жить", "number=singular;verb_form=imperative", "живи"). form("жить", "number=plural;verb_form=imperative", "живите").
irregular("писать").
form("писать", "number=singular;person=first;verb_form=present", "пишу"). form("писать", "number=singular;person=second;verb_form=present", "пишешь"). form("писать", "number=singular;person=third;verb_form=present", "пишет"). form("писать", "number=plural;person=first;verb_form=present", "пишем"). form("писать", "number=plural;person=second;verb_form=present", "пишете"). form("писать", "number=plural;person=third;verb_form=present", "пишут").
form("писать", "gender=masculine;number=singular;verb_form=past", "писал"). form("писать", "gender=feminine;number=singular;verb_form=past", "писала"). form("писать", "gender=neuter;number=singular;verb_form=past", "писало"). form("писать", "number=plural;verb_form=past", "писали").
form("писать", "number=singular;verb_form=imperative", "пиши"). form("писать", "number=plural;verb_form=imperative", "пишите").
irregular("любить").
form("любить", "number=singular;person=first;verb_form=present", "люблю"). form("любить", "number=singular;person=second;verb_form=present", "любишь"). form("любить", "number=singular;person=third;verb_form=present", "любит"). form("любить", "number=plural;person=first;verb_form=present", "любим"). form("любить", "number=plural;person=second;verb_form=present", "любите"). form("любить", "number=plural;person=third;verb_form=present", "любят").
form("любить", "gender=masculine;number=singular;verb_form=past", "любил"). form("любить", "gender=feminine;number=singular;verb_form=past", "любила"). form("любить", "gender=neuter;number=singular;verb_form=past", "любило"). form("любить", "number=plural;verb_form=past", "любили").
form("любить", "number=singular;verb_form=imperative", "люби"). form("любить", "number=plural;verb_form=imperative", "любите").
irregular("видеть").
form("видеть", "number=singular;person=first;verb_form=present", "вижу"). form("видеть", "number=singular;person=second;verb_form=present", "видишь"). form("видеть", "number=singular;person=third;verb_form=present", "видит"). form("видеть", "number=plural;person=first;verb_form=present", "видим"). form("видеть", "number=plural;person=second;verb_form=present", "видите"). form("видеть", "number=plural;person=third;verb_form=present", "видят").
form("видеть", "gender=masculine;number=singular;verb_form=past", "видел"). form("видеть", "gender=feminine;number=singular;verb_form=past", "видела"). form("видеть", "gender=neuter;number=singular;verb_form=past", "видело"). form("видеть", "number=plural;verb_form=past", "видели").
irregular("давать").
form("давать", "number=singular;person=first;verb_form=present", "даю"). form("давать", "number=singular;person=second;verb_form=present", "даёшь"). form("давать", "number=singular;person=third;verb_form=present", "даёт"). form("давать", "number=plural;person=first;verb_form=present", "даём"). form("давать", "number=plural;person=second;verb_form=present", "даёте"). form("давать", "number=plural;person=third;verb_form=present", "дают").
form("давать", "gender=masculine;number=singular;verb_form=past", "давал"). form("давать", "gender=feminine;number=singular;verb_form=past", "давала"). form("давать", "gender=neuter;number=singular;verb_form=past", "давало"). form("давать", "number=plural;verb_form=past", "давали").
form("давать", "number=singular;verb_form=imperative", "давай"). form("давать", "number=plural;verb_form=imperative", "давайте").
irregular("вставать").
form("вставать", "number=singular;person=first;verb_form=present", "встаю"). form("вставать", "number=singular;person=second;verb_form=present", "встаёшь"). form("вставать", "number=singular;person=third;verb_form=present", "встаёт"). form("вставать", "number=plural;person=first;verb_form=present", "встаём"). form("вставать", "number=plural;person=second;verb_form=present", "встаёте"). form("вставать", "number=plural;person=third;verb_form=present", "встают").
form("вставать", "gender=masculine;number=singular;verb_form=past", "вставал"). form("вставать", "gender=feminine;number=singular;verb_form=past", "вставала"). form("вставать", "gender=neuter;number=singular;verb_form=past", "вставало"). form("вставать", "number=plural;verb_form=past", "вставали").
form("вставать", "number=singular;verb_form=imperative", "вставай"). form("вставать", "number=plural;verb_form=imperative", "вставайте").
irregular("брать").
form("брать", "number=singular;person=first;verb_form=present", "беру"). form("брать", "number=singular;person=second;verb_form=present", "берёшь"). form("брать", "number=singular;person=third;verb_form=present", "берёт"). form("брать", "number=plural;person=first;verb_form=present", "берём"). form("брать", "number=plural;person=second;verb_form=present", "берёте"). form("брать", "number=plural;person=third;verb_form=present", "берут").
form("брать", "gender=masculine;number=singular;verb_form=past", "брал"). form("брать", "gender=feminine;number=singular;verb_form=past", "брала"). form("брать", "gender=neuter;number=singular;verb_form=past", "брало"). form("брать", "number=plural;verb_form=past", "брали").
form("брать", "number=singular;verb_form=imperative", "бери"). form("брать", "number=plural;verb_form=imperative", "берите").
irregular("пить").
form("пить", "number=singular;person=first;verb_form=present", "пью"). form("пить", "number=singular;person=second;verb_form=present", "пьёшь"). form("пить", "number=singular;person=third;verb_form=present", "пьёт"). form("пить", "number=plural;person=first;verb_form=present", "пьём"). form("пить", "number=plural;person=second;verb_form=present", "пьёте"). form("пить", "number=plural;person=third;verb_form=present", "пьют").
form("пить", "gender=masculine;number=singular;verb_form=past", "пил"). form("пить", "gender=feminine;number=singular;verb_form=past", "пила"). form("пить", "gender=neuter;number=singular;verb_form=past", "пило"). form("пить", "number=plural;verb_form=past", "пили").
form("пить", "number=singular;verb_form=imperative", "пей"). form("пить", "number=plural;verb_form=imperative", "пейте").
irregular("спать").
form("спать", "number=singular;person=first;verb_form=present", "сплю"). form("спать", "number=singular;person=second;verb_form=present", "спишь"). form("спать", "number=singular;person=third;verb_form=present", "спит"). form("спать", "number=plural;person=first;verb_form=present", "спим"). form("спать", "number=plural;person=second;verb_form=present", "спите"). form("спать", "number=plural;person=third;verb_form=present", "спят").
form("спать", "gender=masculine;number=singular;verb_form=past", "спал"). form("спать", "gender=feminine;number=singular;verb_form=past", "спала"). form("спать", "gender=neuter;number=singular;verb_form=past", "спало"). form("спать", "number=plural;verb_form=past", "спали").
form("спать", "number=singular;verb_form=imperative", "спи"). form("спать", "number=plural;verb_form=imperative", "спите").
irregular("ехать").
form("ехать", "number=singular;person=first;verb_form=present", "еду"). form("ехать", "number=singular;person=second;verb_form=present", "едешь"). form("ехать", "number=singular;person=third;verb_form=present", "едет"). form("ехать", "number=plural;person=first;verb_form=present", "едем"). form("ехать", "number=plural;person=second;verb_form=present", "едете"). form("ехать", "number=plural;person=third;verb_form=present", "едут").
form("ехать", "gender=masculine;number=singular;verb_form=past", "ехал"). form("ехать", "gender=feminine;number=singular;verb_form=past", "ехала"). form("ехать", "gender=neuter;number=singular;verb_form=past", "ехало"). form("ехать", "number=plural;verb_form=past", "ехали").
irregular("стоять").
form("стоять", "number=singular;person=first;verb_form=present", "стою"). form("стоять", "number=singular;person=second;verb_form=present", "стоишь"). form("стоять", "number=singular;person=third;verb_form=present", "стоит"). form("стоять", "number=plural;person=first;verb_form=present", "стоим"). form("стоять", "number=plural;person=second;verb_form=present", "стоите"). form("стоять", "number=plural;person=third;verb_form=present", "стоят").
form("стоять", "gender=masculine;number=singular;verb_form=past", "стоял"). form("стоять", "gender=feminine;number=singular;verb_form=past", "стояла"). form("стоять", "gender=neuter;number=singular;verb_form=past", "стояло"). form("стоять", "number=plural;verb_form=past", "стояли").
form("стоять", "number=singular;verb_form=imperative", "стой"). form("стоять", "number=plural;verb_form=imperative", "стойте").
irregular("сидеть").
form("сидеть", "number=singular;person=first;verb_form=present", "сижу"). form("сидеть", "number=singular;person=second;verb_form=present", "сидишь"). form("сидеть", "number=singular;person=third;verb_form=present", "сидит"). form("сидеть", "number=plural;person=first;verb_form=present", "сидим"). form("сидеть", "number=plural;person=second;verb_form=present", "сидите"). form("сидеть", "number=plural;person=third;verb_form=present", "сидят").
form("сидеть", "gender=masculine;number=singular;verb_form=past", "сидел"). form("сидеть", "gender=feminine;number=singular;verb_form=past", "сидела"). form("сидеть", "gender=neuter;number=singular;verb_form=past", "сидело"). form("сидеть", "number=plural;verb_form=past", "сидели").
form("сидеть", "number=singular;verb_form=imperative", "сиди"). form("сидеть", "number=plural;verb_form=imperative", "сидите").
irregular("танцевать").
form("танцевать", "number=singular;person=first;verb_form=present", "танцую"). form("танцевать", "number=singular;person=second;verb_form=present", "танцуешь"). form("танцевать", "number=singular;person=third;verb_form=present", "танцует"). form("танцевать", "number=plural;person=first;verb_form=present", "танцуем"). form("танцевать", "number=plural;person=second;verb_form=present", "танцуете"). form("танцевать", "number=plural;person=third;verb_form=present", "танцуют").
form("танцевать", "gender=masculine;number=singular;verb_form=past", "танцевал"). form("танцевать", "gender=feminine;number=singular;verb_form=past", "танцевала"). form("танцевать", "gender=neuter;number=singular;verb_form=past", "танцевало"). form("танцевать", "number=plural;verb_form=past", "танцевали").
form("танцевать", "number=singular;verb_form=imperative", "танцуй"). form("танцевать", "number=plural;verb_form=imperative", "танцуйте").

% Additional irregular verbs. Forms are taken from Apertium, not invented.
irregular("дать").
form("дать", "gender=feminine;number=singular;verb_form=past", "дала").
form("дать", "gender=masculine;number=singular;verb_form=past", "дал").
form("дать", "gender=neuter;number=singular;verb_form=past", "дало").
form("дать", "number=plural;person=first;verb_form=future", "дадим").
form("дать", "number=plural;person=second;verb_form=future", "дадите").
form("дать", "number=plural;person=third;verb_form=future", "дадут").
form("дать", "number=plural;verb_form=imperative", "дайте").
form("дать", "number=plural;verb_form=past", "дали").
form("дать", "number=singular;person=first;verb_form=future", "дам").
form("дать", "number=singular;person=second;verb_form=future", "дашь").
form("дать", "number=singular;person=third;verb_form=future", "даст").
form("дать", "number=singular;verb_form=imperative", "дай").
form("дать", "verb_form=infinitive", "дать").
irregular("взять").
form("взять", "gender=feminine;number=singular;verb_form=past", "взяла").
form("взять", "gender=masculine;number=singular;verb_form=past", "взял").
form("взять", "gender=neuter;number=singular;verb_form=past", "взяло").
form("взять", "number=plural;person=first;verb_form=future", "возьмём").
form("взять", "number=plural;person=second;verb_form=future", "возьмёте").
form("взять", "number=plural;person=third;verb_form=future", "возьмут").
form("взять", "number=plural;verb_form=imperative", "возьмите").
form("взять", "number=plural;verb_form=past", "взяли").
form("взять", "number=singular;person=first;verb_form=future", "возьму").
form("взять", "number=singular;person=second;verb_form=future", "возьмёшь").
form("взять", "number=singular;person=third;verb_form=future", "возьмёт").
form("взять", "number=singular;verb_form=imperative", "возьми").
form("взять", "verb_form=infinitive", "взять").
irregular("сказать").
form("сказать", "gender=feminine;number=singular;verb_form=past", "сказала").
form("сказать", "gender=masculine;number=singular;verb_form=past", "сказал").
form("сказать", "gender=neuter;number=singular;verb_form=past", "сказало").
form("сказать", "number=plural;person=first;verb_form=future", "скажем").
form("сказать", "number=plural;person=second;verb_form=future", "скажете").
form("сказать", "number=plural;person=third;verb_form=future", "скажут").
form("сказать", "number=plural;verb_form=imperative", "скажите").
form("сказать", "number=plural;verb_form=past", "сказали").
form("сказать", "number=singular;person=first;verb_form=future", "скажу").
form("сказать", "number=singular;person=second;verb_form=future", "скажешь").
form("сказать", "number=singular;person=third;verb_form=future", "скажет").
form("сказать", "number=singular;verb_form=imperative", "скажи").
form("сказать", "verb_form=infinitive", "сказать").
irregular("слышать").
form("слышать", "gender=feminine;number=singular;verb_form=past", "слышала").
form("слышать", "gender=masculine;number=singular;verb_form=past", "слышал").
form("слышать", "gender=neuter;number=singular;verb_form=past", "слышало").
form("слышать", "number=plural;person=first;verb_form=present", "слышим").
form("слышать", "number=plural;person=second;verb_form=present", "слышите").
form("слышать", "number=plural;person=third;verb_form=present", "слышат").
form("слышать", "number=plural;verb_form=imperative", "слышьте").
form("слышать", "number=plural;verb_form=past", "слышали").
form("слышать", "number=singular;person=first;verb_form=present", "слышу").
form("слышать", "number=singular;person=second;verb_form=present", "слышишь").
form("слышать", "number=singular;person=third;verb_form=present", "слышит").
form("слышать", "number=singular;verb_form=imperative", "слышь").
form("слышать", "verb_form=infinitive", "слышать").
irregular("бежать").
form("бежать", "gender=feminine;number=singular;verb_form=past", "бежала").
form("бежать", "gender=masculine;number=singular;verb_form=past", "бежал").
form("бежать", "gender=neuter;number=singular;verb_form=past", "бежало").
form("бежать", "number=plural;person=first;verb_form=present", "бежим").
form("бежать", "number=plural;person=second;verb_form=present", "бежите").
form("бежать", "number=plural;person=third;verb_form=present", "бегут").
form("бежать", "number=plural;verb_form=imperative", "бегите").
form("бежать", "number=plural;verb_form=past", "бежали").
form("бежать", "number=singular;person=first;verb_form=present", "бегу").
form("бежать", "number=singular;person=second;verb_form=present", "бежишь").
form("бежать", "number=singular;person=third;verb_form=present", "бежит").
form("бежать", "number=singular;verb_form=imperative", "беги").
form("бежать", "verb_form=infinitive", "бежать").
irregular("класть").
form("класть", "gender=feminine;number=singular;verb_form=past", "клала").
form("класть", "gender=masculine;number=singular;verb_form=past", "клал").
form("класть", "gender=neuter;number=singular;verb_form=past", "клало").
form("класть", "number=plural;person=first;verb_form=present", "кладём").
form("класть", "number=plural;person=second;verb_form=present", "кладёте").
form("класть", "number=plural;person=third;verb_form=present", "кладут").
form("класть", "number=plural;verb_form=imperative", "кладите").
form("класть", "number=plural;verb_form=past", "клали").
form("класть", "number=singular;person=first;verb_form=present", "кладу").
form("класть", "number=singular;person=second;verb_form=present", "кладёшь").
form("класть", "number=singular;person=third;verb_form=present", "кладёт").
form("класть", "number=singular;verb_form=imperative", "клади").
form("класть", "verb_form=infinitive", "класть").
irregular("сесть").
form("сесть", "gender=feminine;number=singular;verb_form=past", "села").
form("сесть", "gender=masculine;number=singular;verb_form=past", "сел").
form("сесть", "gender=neuter;number=singular;verb_form=past", "село").
form("сесть", "number=plural;person=first;verb_form=future", "сядем").
form("сесть", "number=plural;person=second;verb_form=future", "сядете").
form("сесть", "number=plural;person=third;verb_form=future", "сядут").
form("сесть", "number=plural;verb_form=imperative", "сядем").
form("сесть", "number=plural;verb_form=past", "сели").
form("сесть", "number=singular;person=first;verb_form=future", "сяду").
form("сесть", "number=singular;person=second;verb_form=future", "сядешь").
form("сесть", "number=singular;person=third;verb_form=future", "сядет").
form("сесть", "number=singular;verb_form=imperative", "сядь").
form("сесть", "verb_form=infinitive", "сесть").
irregular("лечь").
form("лечь", "gender=feminine;number=singular;verb_form=past", "легла").
form("лечь", "gender=masculine;number=singular;verb_form=past", "лёг").
form("лечь", "gender=neuter;number=singular;verb_form=past", "легло").
form("лечь", "number=plural;person=first;verb_form=future", "ляжем").
form("лечь", "number=plural;person=second;verb_form=future", "ляжете").
form("лечь", "number=plural;person=third;verb_form=future", "лягут").
form("лечь", "number=plural;verb_form=imperative", "ляжем").
form("лечь", "number=plural;verb_form=past", "легли").
form("лечь", "number=singular;person=first;verb_form=future", "лягу").
form("лечь", "number=singular;person=second;verb_form=future", "ляжешь").
form("лечь", "number=singular;person=third;verb_form=future", "ляжет").
form("лечь", "number=singular;verb_form=imperative", "ляг").
form("лечь", "verb_form=infinitive", "лечь").
irregular("петь").
form("петь", "gender=feminine;number=singular;verb_form=past", "пела").
form("петь", "gender=masculine;number=singular;verb_form=past", "пел").
form("петь", "gender=neuter;number=singular;verb_form=past", "пело").
form("петь", "number=plural;person=first;verb_form=present", "поём").
form("петь", "number=plural;person=second;verb_form=present", "поёте").
form("петь", "number=plural;person=third;verb_form=present", "поют").
form("петь", "number=plural;verb_form=imperative", "пойте").
form("петь", "number=plural;verb_form=past", "пели").
form("петь", "number=singular;person=first;verb_form=present", "пою").
form("петь", "number=singular;person=second;verb_form=present", "поёшь").
form("петь", "number=singular;person=third;verb_form=present", "поёт").
form("петь", "number=singular;verb_form=imperative", "пой").
form("петь", "verb_form=infinitive", "петь").
irregular("мыть").
form("мыть", "gender=feminine;number=singular;verb_form=past", "мыла").
form("мыть", "gender=masculine;number=singular;verb_form=past", "мыл").
form("мыть", "gender=neuter;number=singular;verb_form=past", "мыло").
form("мыть", "number=plural;person=first;verb_form=present", "моем").
form("мыть", "number=plural;person=second;verb_form=present", "моете").
form("мыть", "number=plural;person=third;verb_form=present", "моют").
form("мыть", "number=plural;verb_form=imperative", "мойте").
form("мыть", "number=plural;verb_form=past", "мыли").
form("мыть", "number=singular;person=first;verb_form=present", "мою").
form("мыть", "number=singular;person=second;verb_form=present", "моешь").
form("мыть", "number=singular;person=third;verb_form=present", "моет").
form("мыть", "number=singular;verb_form=imperative", "мой").
form("мыть", "verb_form=infinitive", "мыть").
irregular("бить").
form("бить", "gender=feminine;number=singular;verb_form=past", "била").
form("бить", "gender=masculine;number=singular;verb_form=past", "бил").
form("бить", "gender=neuter;number=singular;verb_form=past", "било").
form("бить", "number=plural;person=first;verb_form=present", "бьём").
form("бить", "number=plural;person=second;verb_form=present", "бьёте").
form("бить", "number=plural;person=third;verb_form=present", "бьют").
form("бить", "number=plural;verb_form=imperative", "бем").
form("бить", "number=plural;verb_form=past", "били").
form("бить", "number=singular;person=first;verb_form=present", "бью").
form("бить", "number=singular;person=second;verb_form=present", "бьёшь").
form("бить", "number=singular;person=third;verb_form=present", "бьёт").
form("бить", "number=singular;verb_form=imperative", "бей").
form("бить", "verb_form=infinitive", "бить").
irregular("гнать").
form("гнать", "gender=feminine;number=singular;verb_form=past", "гнала").
form("гнать", "gender=masculine;number=singular;verb_form=past", "гнал").
form("гнать", "gender=neuter;number=singular;verb_form=past", "гнало").
form("гнать", "number=plural;person=first;verb_form=present", "гоним").
form("гнать", "number=plural;person=second;verb_form=present", "гоните").
form("гнать", "number=plural;person=third;verb_form=present", "гонят").
form("гнать", "number=plural;verb_form=imperative", "гоните").
form("гнать", "number=plural;verb_form=past", "гнали").
form("гнать", "number=singular;person=first;verb_form=present", "гоню").
form("гнать", "number=singular;person=second;verb_form=present", "гонишь").
form("гнать", "number=singular;person=third;verb_form=present", "гонит").
form("гнать", "number=singular;verb_form=imperative", "гони").
form("гнать", "verb_form=infinitive", "гнать").
irregular("нести").
form("нести", "gender=feminine;number=singular;verb_form=past", "несла").
form("нести", "gender=masculine;number=singular;verb_form=past", "нёс").
form("нести", "gender=neuter;number=singular;verb_form=past", "несло").
form("нести", "number=plural;person=first;verb_form=present", "несём").
form("нести", "number=plural;person=second;verb_form=present", "несёте").
form("нести", "number=plural;person=third;verb_form=present", "несут").
form("нести", "number=plural;verb_form=imperative", "несите").
form("нести", "number=plural;verb_form=past", "несли").
form("нести", "number=singular;person=first;verb_form=present", "несу").
form("нести", "number=singular;person=second;verb_form=present", "несёшь").
form("нести", "number=singular;person=third;verb_form=present", "несёт").
form("нести", "number=singular;verb_form=imperative", "неси").
form("нести", "verb_form=infinitive", "нести").
irregular("вести").
form("вести", "gender=feminine;number=singular;verb_form=past", "вела").
form("вести", "gender=masculine;number=singular;verb_form=past", "вёл").
form("вести", "gender=neuter;number=singular;verb_form=past", "вело").
form("вести", "number=plural;person=first;verb_form=present", "ведём").
form("вести", "number=plural;person=second;verb_form=present", "ведёте").
form("вести", "number=plural;person=third;verb_form=present", "ведут").
form("вести", "number=plural;verb_form=imperative", "ведите").
form("вести", "number=plural;verb_form=past", "вели").
form("вести", "number=singular;person=first;verb_form=present", "веду").
form("вести", "number=singular;person=second;verb_form=present", "ведёшь").
form("вести", "number=singular;person=third;verb_form=present", "ведёт").
form("вести", "number=singular;verb_form=imperative", "веди").
form("вести", "verb_form=infinitive", "вести").
irregular("расти").
form("расти", "gender=feminine;number=singular;verb_form=past", "росла").
form("расти", "gender=masculine;number=singular;verb_form=past", "рос").
form("расти", "gender=neuter;number=singular;verb_form=past", "росло").
form("расти", "number=plural;person=first;verb_form=present", "растём").
form("расти", "number=plural;person=second;verb_form=present", "растёте").
form("расти", "number=plural;person=third;verb_form=present", "растут").
form("расти", "number=plural;verb_form=imperative", "растите").
form("расти", "number=plural;verb_form=past", "росли").
form("расти", "number=singular;person=first;verb_form=present", "расту").
form("расти", "number=singular;person=second;verb_form=present", "растёшь").
form("расти", "number=singular;person=third;verb_form=present", "растёт").
form("расти", "number=singular;verb_form=imperative", "расти").
form("расти", "verb_form=infinitive", "расти").
irregular("беречь").
form("беречь", "gender=feminine;number=singular;verb_form=past", "берегла").
form("беречь", "gender=masculine;number=singular;verb_form=past", "берёг").
form("беречь", "gender=neuter;number=singular;verb_form=past", "берегло").
form("беречь", "number=plural;person=first;verb_form=present", "бережём").
form("беречь", "number=plural;person=second;verb_form=present", "бережёте").
form("беречь", "number=plural;person=third;verb_form=present", "берегут").
form("беречь", "number=plural;verb_form=imperative", "берегите").
form("беречь", "number=plural;verb_form=past", "берегли").
form("беречь", "number=singular;person=first;verb_form=present", "берегу").
form("беречь", "number=singular;person=second;verb_form=present", "бережёшь").
form("беречь", "number=singular;person=third;verb_form=present", "бережёт").
form("беречь", "number=singular;verb_form=imperative", "береги").
form("беречь", "verb_form=infinitive", "беречь").
irregular("лезть").
form("лезть", "gender=feminine;number=singular;verb_form=past", "лезла").
form("лезть", "gender=masculine;number=singular;verb_form=past", "лез").
form("лезть", "gender=neuter;number=singular;verb_form=past", "лезло").
form("лезть", "number=plural;person=first;verb_form=present", "лезем").
form("лезть", "number=plural;person=second;verb_form=present", "лезете").
form("лезть", "number=plural;person=third;verb_form=present", "лезут").
form("лезть", "number=plural;verb_form=imperative", "лезьте").
form("лезть", "number=plural;verb_form=past", "лезли").
form("лезть", "number=singular;person=first;verb_form=present", "лезу").
form("лезть", "number=singular;person=second;verb_form=present", "лезешь").
form("лезть", "number=singular;person=third;verb_form=present", "лезет").
form("лезть", "number=singular;verb_form=imperative", "лезь").
form("лезть", "verb_form=infinitive", "лезть").
irregular("звать").
form("звать", "gender=feminine;number=singular;verb_form=past", "звала").
form("звать", "gender=masculine;number=singular;verb_form=past", "звал").
form("звать", "gender=neuter;number=singular;verb_form=past", "звало").
form("звать", "number=plural;person=first;verb_form=present", "зовём").
form("звать", "number=plural;person=second;verb_form=present", "зовёте").
form("звать", "number=plural;person=third;verb_form=present", "зовут").
form("звать", "number=plural;verb_form=imperative", "зовите").
form("звать", "number=plural;verb_form=past", "звали").
form("звать", "number=singular;person=first;verb_form=present", "зову").
form("звать", "number=singular;person=second;verb_form=present", "зовёшь").
form("звать", "number=singular;person=third;verb_form=present", "зовёт").
form("звать", "number=singular;verb_form=imperative", "зови").
form("звать", "verb_form=infinitive", "звать").
irregular("ждать").
form("ждать", "gender=feminine;number=singular;verb_form=past", "ждала").
form("ждать", "gender=masculine;number=singular;verb_form=past", "ждал").
form("ждать", "gender=neuter;number=singular;verb_form=past", "ждало").
form("ждать", "number=plural;person=first;verb_form=present", "ждём").
form("ждать", "number=plural;person=second;verb_form=present", "ждёте").
form("ждать", "number=plural;person=third;verb_form=present", "ждут").
form("ждать", "number=plural;verb_form=imperative", "ждите").
form("ждать", "number=plural;verb_form=past", "ждали").
form("ждать", "number=singular;person=first;verb_form=present", "жду").
form("ждать", "number=singular;person=second;verb_form=present", "ждёшь").
form("ждать", "number=singular;person=third;verb_form=present", "ждёт").
form("ждать", "number=singular;verb_form=imperative", "жди").
form("ждать", "verb_form=infinitive", "ждать").
irregular("найти").
form("найти", "gender=feminine;number=singular;verb_form=past", "нашла").
form("найти", "gender=masculine;number=singular;verb_form=past", "нашёл").
form("найти", "gender=neuter;number=singular;verb_form=past", "нашло").
form("найти", "number=plural;person=first;verb_form=future", "найдём").
form("найти", "number=plural;person=second;verb_form=future", "найдёте").
form("найти", "number=plural;person=third;verb_form=future", "найдут").
form("найти", "number=plural;verb_form=imperative", "найдём").
form("найти", "number=plural;verb_form=past", "нашли").
form("найти", "number=singular;person=first;verb_form=future", "найду").
form("найти", "number=singular;person=second;verb_form=future", "найдёшь").
form("найти", "number=singular;person=third;verb_form=future", "найдёт").
form("найти", "number=singular;verb_form=imperative", "найди").
form("найти", "verb_form=infinitive", "найти").
irregular("прийти").
form("прийти", "gender=feminine;number=singular;verb_form=past", "пришла").
form("прийти", "gender=masculine;number=singular;verb_form=past", "пришёл").
form("прийти", "gender=neuter;number=singular;verb_form=past", "пришло").
form("прийти", "number=plural;person=first;verb_form=future", "придём").
form("прийти", "number=plural;person=second;verb_form=future", "придёте").
form("прийти", "number=plural;person=third;verb_form=future", "придут").
form("прийти", "number=plural;verb_form=imperative", "придём").
form("прийти", "number=plural;verb_form=past", "пришли").
form("прийти", "number=singular;person=first;verb_form=future", "приду").
form("прийти", "number=singular;person=second;verb_form=future", "придёшь").
form("прийти", "number=singular;person=third;verb_form=future", "придёт").
form("прийти", "number=singular;verb_form=imperative", "приди").
form("прийти", "verb_form=infinitive", "прийти").
irregular("выйти").
form("выйти", "gender=feminine;number=singular;verb_form=past", "вышла").
form("выйти", "gender=masculine;number=singular;verb_form=past", "вышёл").
form("выйти", "gender=neuter;number=singular;verb_form=past", "вышло").
form("выйти", "number=plural;person=first;verb_form=future", "выйдем").
form("выйти", "number=plural;person=second;verb_form=future", "выйдете").
form("выйти", "number=plural;person=third;verb_form=future", "выйдут").
form("выйти", "number=plural;verb_form=imperative", "выйдем").
form("выйти", "number=plural;verb_form=past", "вышли").
form("выйти", "number=singular;person=first;verb_form=future", "выйду").
form("выйти", "number=singular;person=second;verb_form=future", "выйдешь").
form("выйти", "number=singular;person=third;verb_form=future", "выйдет").
form("выйти", "number=singular;verb_form=imperative", "выйди").
form("выйти", "verb_form=infinitive", "выйти").
irregular("понять").
form("понять", "gender=feminine;number=singular;verb_form=past", "поняла").
form("понять", "gender=masculine;number=singular;verb_form=past", "понял").
form("понять", "gender=neuter;number=singular;verb_form=past", "поняло").
form("понять", "number=plural;person=first;verb_form=future", "поймём").
form("понять", "number=plural;person=second;verb_form=future", "поймёте").
form("понять", "number=plural;person=third;verb_form=future", "поймут").
form("понять", "number=plural;verb_form=imperative", "поймём").
form("понять", "number=plural;verb_form=past", "поняли").
form("понять", "number=singular;person=first;verb_form=future", "пойму").
form("понять", "number=singular;person=second;verb_form=future", "поймёшь").
form("понять", "number=singular;person=third;verb_form=future", "поймёт").
form("понять", "number=singular;verb_form=imperative", "пойми").
form("понять", "verb_form=infinitive", "понять").
irregular("принять").
form("принять", "gender=feminine;number=singular;verb_form=past", "приняла").
form("принять", "gender=masculine;number=singular;verb_form=past", "принял").
form("принять", "gender=neuter;number=singular;verb_form=past", "приняло").
form("принять", "number=plural;person=first;verb_form=future", "примем").
form("принять", "number=plural;person=second;verb_form=future", "примете").
form("принять", "number=plural;person=third;verb_form=future", "примут").
form("принять", "number=plural;verb_form=imperative", "примите").
form("принять", "number=plural;verb_form=past", "приняли").
form("принять", "number=singular;person=first;verb_form=future", "приму").
form("принять", "number=singular;person=second;verb_form=future", "примешь").
form("принять", "number=singular;person=third;verb_form=future", "примет").
form("принять", "number=singular;verb_form=imperative", "прими").
form("принять", "verb_form=infinitive", "принять").
irregular("начать").
form("начать", "gender=feminine;number=singular;verb_form=past", "начала").
form("начать", "gender=masculine;number=singular;verb_form=past", "начал").
form("начать", "gender=neuter;number=singular;verb_form=past", "начало").
form("начать", "number=plural;person=first;verb_form=future", "начнём").
form("начать", "number=plural;person=second;verb_form=future", "начнёте").
form("начать", "number=plural;person=third;verb_form=future", "начнут").
form("начать", "number=plural;verb_form=imperative", "начните").
form("начать", "number=plural;verb_form=past", "начали").
form("начать", "number=singular;person=first;verb_form=future", "начну").
form("начать", "number=singular;person=second;verb_form=future", "начнёшь").
form("начать", "number=singular;person=third;verb_form=future", "начнёт").
form("начать", "number=singular;verb_form=imperative", "начни").
form("начать", "verb_form=infinitive", "начать").
irregular("стать").
form("стать", "gender=feminine;number=singular;verb_form=past", "стала").
form("стать", "gender=masculine;number=singular;verb_form=past", "стал").
form("стать", "gender=neuter;number=singular;verb_form=past", "стало").
form("стать", "number=plural;person=first;verb_form=future", "станем").
form("стать", "number=plural;person=second;verb_form=future", "станете").
form("стать", "number=plural;person=third;verb_form=future", "станут").
form("стать", "number=plural;verb_form=imperative", "станем").
form("стать", "number=plural;verb_form=past", "стали").
form("стать", "number=singular;person=first;verb_form=future", "стану").
form("стать", "number=singular;person=second;verb_form=future", "станешь").
form("стать", "number=singular;person=third;verb_form=future", "станет").
form("стать", "number=singular;verb_form=imperative", "стань").
form("стать", "verb_form=infinitive", "стать").
irregular("создать").
form("создать", "gender=feminine;number=singular;verb_form=past", "создала").
form("создать", "gender=masculine;number=singular;verb_form=past", "создал").
form("создать", "gender=neuter;number=singular;verb_form=past", "создало").
form("создать", "number=plural;person=first;verb_form=future", "создадим").
form("создать", "number=plural;person=second;verb_form=future", "создадите").
form("создать", "number=plural;person=third;verb_form=future", "создадут").
form("создать", "number=plural;verb_form=imperative", "создадим").
form("создать", "number=plural;verb_form=past", "создали").
form("создать", "number=singular;person=first;verb_form=future", "создам").
form("создать", "number=singular;person=second;verb_form=future", "создашь").
form("создать", "number=singular;person=third;verb_form=future", "создаст").
form("создать", "number=singular;verb_form=imperative", "создай").
form("создать", "verb_form=infinitive", "создать").
irregular("плыть").
form("плыть", "gender=feminine;number=singular;verb_form=past", "плыла").
form("плыть", "gender=masculine;number=singular;verb_form=past", "плыл").
form("плыть", "gender=neuter;number=singular;verb_form=past", "плыло").
form("плыть", "number=plural;person=first;verb_form=present", "плывём").
form("плыть", "number=plural;person=second;verb_form=present", "плывёте").
form("плыть", "number=plural;person=third;verb_form=present", "плывут").
form("плыть", "number=plural;verb_form=imperative", "плывите").
form("плыть", "number=plural;verb_form=past", "плыли").
form("плыть", "number=singular;person=first;verb_form=present", "плыву").
form("плыть", "number=singular;person=second;verb_form=present", "плывёшь").
form("плыть", "number=singular;person=third;verb_form=present", "плывёт").
form("плыть", "number=singular;verb_form=imperative", "плыви").
form("плыть", "verb_form=infinitive", "плыть").
irregular("тереть").
form("тереть", "gender=feminine;number=singular;verb_form=past", "тёрла").
form("тереть", "gender=masculine;number=singular;verb_form=past", "тёр").
form("тереть", "gender=neuter;number=singular;verb_form=past", "тёрло").
form("тереть", "number=plural;person=first;verb_form=present", "трём").
form("тереть", "number=plural;person=second;verb_form=present", "трёте").
form("тереть", "number=plural;person=third;verb_form=present", "трут").
form("тереть", "number=plural;verb_form=imperative", "трите").
form("тереть", "number=plural;verb_form=past", "тёрли").
form("тереть", "number=singular;person=first;verb_form=present", "тру").
form("тереть", "number=singular;person=second;verb_form=present", "трёшь").
form("тереть", "number=singular;person=third;verb_form=present", "трёт").
form("тереть", "number=singular;verb_form=imperative", "три").
form("тереть", "verb_form=infinitive", "тереть").
irregular("умереть").
form("умереть", "gender=feminine;number=singular;verb_form=past", "умерла").
form("умереть", "gender=masculine;number=singular;verb_form=past", "умер").
form("умереть", "gender=neuter;number=singular;verb_form=past", "умерло").
form("умереть", "number=plural;person=first;verb_form=future", "умрём").
form("умереть", "number=plural;person=second;verb_form=future", "умрёте").
form("умереть", "number=plural;person=third;verb_form=future", "умрут").
form("умереть", "number=plural;verb_form=imperative", "умрите").
form("умереть", "number=plural;verb_form=past", "умерли").
form("умереть", "number=singular;person=first;verb_form=future", "умру").
form("умереть", "number=singular;person=second;verb_form=future", "умрёшь").
form("умереть", "number=singular;person=third;verb_form=future", "умрёт").
form("умереть", "number=singular;verb_form=imperative", "умри").
form("умереть", "verb_form=infinitive", "умереть").
irregular("казаться").
form("казаться", "gender=feminine;number=singular;verb_form=past", "казалася").
form("казаться", "gender=masculine;number=singular;verb_form=past", "казался").
form("казаться", "gender=neuter;number=singular;verb_form=past", "казалось").
form("казаться", "number=plural;person=first;verb_form=present", "кажемся").
form("казаться", "number=plural;person=second;verb_form=present", "кажетесь").
form("казаться", "number=plural;person=third;verb_form=present", "кажутся").
form("казаться", "number=plural;verb_form=imperative", "кажитесь").
form("казаться", "number=plural;verb_form=past", "казались").
form("казаться", "number=singular;person=first;verb_form=present", "кажусь").
form("казаться", "number=singular;person=second;verb_form=present", "кажешься").
form("казаться", "number=singular;person=third;verb_form=present", "кажется").
form("казаться", "number=singular;verb_form=imperative", "кажись").
form("казаться", "verb_form=infinitive", "казаться").
irregular("молоть").
form("молоть", "gender=feminine;number=singular;verb_form=past", "молола").
form("молоть", "gender=masculine;number=singular;verb_form=past", "молол").
form("молоть", "gender=neuter;number=singular;verb_form=past", "мололо").
form("молоть", "number=plural;person=first;verb_form=present", "молем").
form("молоть", "number=plural;person=second;verb_form=present", "молете").
form("молоть", "number=plural;person=third;verb_form=present", "молют").
form("молоть", "number=plural;verb_form=imperative", "молите").
form("молоть", "number=plural;verb_form=past", "мололи").
form("молоть", "number=singular;person=first;verb_form=present", "молю").
form("молоть", "number=singular;person=second;verb_form=present", "молешь").
form("молоть", "number=singular;person=third;verb_form=present", "молет").
form("молоть", "number=singular;verb_form=imperative", "моли").
form("молоть", "verb_form=infinitive", "молоть").
