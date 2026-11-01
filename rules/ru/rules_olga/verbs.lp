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
