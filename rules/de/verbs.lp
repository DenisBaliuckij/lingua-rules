% rules/de/verbs.lp
% German verbs (features: verb_form, person, number): infinitive, present,
% simple past (Präteritum), past participle, imperative (du / ihr).
%
% Weak (regular) verbs get a class with verb_class/2; the stem is the
% infinitive without "-en":
%   weak        machen    -> mache, machst, macht ... machte ... gemacht; mach!, macht!
%   weak_t      arbeiten  -> arbeite, arbeitest, arbeitet ... arbeitete ... gearbeitet
%               (stems in -t/-d and consonant + n insert "e")
%   weak_no_ge  studieren -> studiert; besuchen -> besucht
%               (verbs in -ieren and with an inseparable prefix have no "ge-")
% Strong, mixed and modal verbs are irregular and list all their forms.
%
% Not covered: separable verbs (anrufen -> ruft an), verbs in -eln/-ern
% (sammeln), the subjunctive (Konjunktiv I/II) and the formal imperative.

form(L, "verb_form=infinitive", L) :- input_lemma(L).
stem(L, @strip_suffix_add(L, 2, "")) :- input_lemma(L), verb_class(L, _).

% --- weak
form(L, "number=singular;person=first;verb_form=present", @suffix(S, "e")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=second;verb_form=present", @suffix(S, "st")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=third;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=first;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=second;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=third;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=first;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=second;verb_form=past", @suffix(S, "test")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=third;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=first;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=second;verb_form=past", @suffix(S, "tet")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=third;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak), stem(L, S).
form(L, "verb_form=past_participle", @prefix(P, "ge")) :- verb_class(L, weak), stem(L, S), P = @suffix(S, "t").
form(L, "number=singular;verb_form=imperative", S) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;verb_form=imperative", @suffix(S, "t")) :- verb_class(L, weak), stem(L, S).

% --- weak_t
form(L, "number=singular;person=first;verb_form=present", @suffix(S, "e")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=second;verb_form=present", @suffix(S, "est")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=third;verb_form=present", @suffix(S, "et")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=first;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=second;verb_form=present", @suffix(S, "et")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=third;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=first;verb_form=past", @suffix(S, "ete")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=second;verb_form=past", @suffix(S, "etest")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=third;verb_form=past", @suffix(S, "ete")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=first;verb_form=past", @suffix(S, "eten")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=second;verb_form=past", @suffix(S, "etet")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=third;verb_form=past", @suffix(S, "eten")) :- verb_class(L, weak_t), stem(L, S).
form(L, "verb_form=past_participle", @prefix(P, "ge")) :- verb_class(L, weak_t), stem(L, S), P = @suffix(S, "et").
form(L, "number=singular;verb_form=imperative", @suffix(S, "e")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;verb_form=imperative", @suffix(S, "et")) :- verb_class(L, weak_t), stem(L, S).

% --- weak_no_ge
form(L, "number=singular;person=first;verb_form=present", @suffix(S, "e")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=second;verb_form=present", @suffix(S, "st")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=third;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=first;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=second;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=third;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=first;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=second;verb_form=past", @suffix(S, "test")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=third;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=first;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=second;verb_form=past", @suffix(S, "tet")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=third;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "verb_form=past_participle", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;verb_form=imperative", S) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;verb_form=imperative", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).

% --- class membership
verb_class("machen", weak). verb_class("spielen", weak). verb_class("lernen", weak). verb_class("kaufen", weak). verb_class("sagen", weak). verb_class("wohnen", weak). verb_class("hören", weak). verb_class("kochen", weak). verb_class("fragen", weak). verb_class("brauchen", weak). verb_class("zeigen", weak). verb_class("glauben", weak).
verb_class("arbeiten", weak_t). verb_class("warten", weak_t). verb_class("antworten", weak_t). verb_class("reden", weak_t). verb_class("baden", weak_t). verb_class("öffnen", weak_t).
verb_class("studieren", weak_no_ge). verb_class("telefonieren", weak_no_ge). verb_class("reparieren", weak_no_ge). verb_class("fotografieren", weak_no_ge). verb_class("besuchen", weak_no_ge). verb_class("bezahlen", weak_no_ge). verb_class("erklären", weak_no_ge). verb_class("erzählen", weak_no_ge). verb_class("verkaufen", weak_no_ge).

% --- strong, mixed and modal verbs (all forms listed)
irregular("sein").
form("sein", "number=singular;person=first;verb_form=present", "bin"). form("sein", "number=singular;person=second;verb_form=present", "bist"). form("sein", "number=singular;person=third;verb_form=present", "ist"). form("sein", "number=plural;person=first;verb_form=present", "sind"). form("sein", "number=plural;person=second;verb_form=present", "seid"). form("sein", "number=plural;person=third;verb_form=present", "sind").
form("sein", "number=singular;person=first;verb_form=past", "war"). form("sein", "number=singular;person=second;verb_form=past", "warst"). form("sein", "number=singular;person=third;verb_form=past", "war"). form("sein", "number=plural;person=first;verb_form=past", "waren"). form("sein", "number=plural;person=second;verb_form=past", "wart"). form("sein", "number=plural;person=third;verb_form=past", "waren").
form("sein", "verb_form=past_participle", "gewesen"). form("sein", "number=singular;verb_form=imperative", "sei"). form("sein", "number=plural;verb_form=imperative", "seid").
irregular("haben").
form("haben", "number=singular;person=first;verb_form=present", "habe"). form("haben", "number=singular;person=second;verb_form=present", "hast"). form("haben", "number=singular;person=third;verb_form=present", "hat"). form("haben", "number=plural;person=first;verb_form=present", "haben"). form("haben", "number=plural;person=second;verb_form=present", "habt"). form("haben", "number=plural;person=third;verb_form=present", "haben").
form("haben", "number=singular;person=first;verb_form=past", "hatte"). form("haben", "number=singular;person=second;verb_form=past", "hattest"). form("haben", "number=singular;person=third;verb_form=past", "hatte"). form("haben", "number=plural;person=first;verb_form=past", "hatten"). form("haben", "number=plural;person=second;verb_form=past", "hattet"). form("haben", "number=plural;person=third;verb_form=past", "hatten").
form("haben", "verb_form=past_participle", "gehabt"). form("haben", "number=singular;verb_form=imperative", "hab"). form("haben", "number=plural;verb_form=imperative", "habt").
irregular("werden").
form("werden", "number=singular;person=first;verb_form=present", "werde"). form("werden", "number=singular;person=second;verb_form=present", "wirst"). form("werden", "number=singular;person=third;verb_form=present", "wird"). form("werden", "number=plural;person=first;verb_form=present", "werden"). form("werden", "number=plural;person=second;verb_form=present", "werdet"). form("werden", "number=plural;person=third;verb_form=present", "werden").
form("werden", "number=singular;person=first;verb_form=past", "wurde"). form("werden", "number=singular;person=second;verb_form=past", "wurdest"). form("werden", "number=singular;person=third;verb_form=past", "wurde"). form("werden", "number=plural;person=first;verb_form=past", "wurden"). form("werden", "number=plural;person=second;verb_form=past", "wurdet"). form("werden", "number=plural;person=third;verb_form=past", "wurden").
form("werden", "verb_form=past_participle", "geworden"). form("werden", "number=singular;verb_form=imperative", "werde"). form("werden", "number=plural;verb_form=imperative", "werdet").
irregular("gehen").
form("gehen", "number=singular;person=first;verb_form=present", "gehe"). form("gehen", "number=singular;person=second;verb_form=present", "gehst"). form("gehen", "number=singular;person=third;verb_form=present", "geht"). form("gehen", "number=plural;person=first;verb_form=present", "gehen"). form("gehen", "number=plural;person=second;verb_form=present", "geht"). form("gehen", "number=plural;person=third;verb_form=present", "gehen").
form("gehen", "number=singular;person=first;verb_form=past", "ging"). form("gehen", "number=singular;person=second;verb_form=past", "gingst"). form("gehen", "number=singular;person=third;verb_form=past", "ging"). form("gehen", "number=plural;person=first;verb_form=past", "gingen"). form("gehen", "number=plural;person=second;verb_form=past", "gingt"). form("gehen", "number=plural;person=third;verb_form=past", "gingen").
form("gehen", "verb_form=past_participle", "gegangen"). form("gehen", "number=singular;verb_form=imperative", "geh"). form("gehen", "number=plural;verb_form=imperative", "geht").
irregular("kommen").
form("kommen", "number=singular;person=first;verb_form=present", "komme"). form("kommen", "number=singular;person=second;verb_form=present", "kommst"). form("kommen", "number=singular;person=third;verb_form=present", "kommt"). form("kommen", "number=plural;person=first;verb_form=present", "kommen"). form("kommen", "number=plural;person=second;verb_form=present", "kommt"). form("kommen", "number=plural;person=third;verb_form=present", "kommen").
form("kommen", "number=singular;person=first;verb_form=past", "kam"). form("kommen", "number=singular;person=second;verb_form=past", "kamst"). form("kommen", "number=singular;person=third;verb_form=past", "kam"). form("kommen", "number=plural;person=first;verb_form=past", "kamen"). form("kommen", "number=plural;person=second;verb_form=past", "kamt"). form("kommen", "number=plural;person=third;verb_form=past", "kamen").
form("kommen", "verb_form=past_participle", "gekommen"). form("kommen", "number=singular;verb_form=imperative", "komm"). form("kommen", "number=plural;verb_form=imperative", "kommt").
irregular("sehen").
form("sehen", "number=singular;person=first;verb_form=present", "sehe"). form("sehen", "number=singular;person=second;verb_form=present", "siehst"). form("sehen", "number=singular;person=third;verb_form=present", "sieht"). form("sehen", "number=plural;person=first;verb_form=present", "sehen"). form("sehen", "number=plural;person=second;verb_form=present", "seht"). form("sehen", "number=plural;person=third;verb_form=present", "sehen").
form("sehen", "number=singular;person=first;verb_form=past", "sah"). form("sehen", "number=singular;person=second;verb_form=past", "sahst"). form("sehen", "number=singular;person=third;verb_form=past", "sah"). form("sehen", "number=plural;person=first;verb_form=past", "sahen"). form("sehen", "number=plural;person=second;verb_form=past", "saht"). form("sehen", "number=plural;person=third;verb_form=past", "sahen").
form("sehen", "verb_form=past_participle", "gesehen"). form("sehen", "number=singular;verb_form=imperative", "sieh"). form("sehen", "number=plural;verb_form=imperative", "seht").
irregular("fahren").
form("fahren", "number=singular;person=first;verb_form=present", "fahre"). form("fahren", "number=singular;person=second;verb_form=present", "fährst"). form("fahren", "number=singular;person=third;verb_form=present", "fährt"). form("fahren", "number=plural;person=first;verb_form=present", "fahren"). form("fahren", "number=plural;person=second;verb_form=present", "fahrt"). form("fahren", "number=plural;person=third;verb_form=present", "fahren").
form("fahren", "number=singular;person=first;verb_form=past", "fuhr"). form("fahren", "number=singular;person=second;verb_form=past", "fuhrst"). form("fahren", "number=singular;person=third;verb_form=past", "fuhr"). form("fahren", "number=plural;person=first;verb_form=past", "fuhren"). form("fahren", "number=plural;person=second;verb_form=past", "fuhrt"). form("fahren", "number=plural;person=third;verb_form=past", "fuhren").
form("fahren", "verb_form=past_participle", "gefahren"). form("fahren", "number=singular;verb_form=imperative", "fahr"). form("fahren", "number=plural;verb_form=imperative", "fahrt").
irregular("sprechen").
form("sprechen", "number=singular;person=first;verb_form=present", "spreche"). form("sprechen", "number=singular;person=second;verb_form=present", "sprichst"). form("sprechen", "number=singular;person=third;verb_form=present", "spricht"). form("sprechen", "number=plural;person=first;verb_form=present", "sprechen"). form("sprechen", "number=plural;person=second;verb_form=present", "sprecht"). form("sprechen", "number=plural;person=third;verb_form=present", "sprechen").
form("sprechen", "number=singular;person=first;verb_form=past", "sprach"). form("sprechen", "number=singular;person=second;verb_form=past", "sprachst"). form("sprechen", "number=singular;person=third;verb_form=past", "sprach"). form("sprechen", "number=plural;person=first;verb_form=past", "sprachen"). form("sprechen", "number=plural;person=second;verb_form=past", "spracht"). form("sprechen", "number=plural;person=third;verb_form=past", "sprachen").
form("sprechen", "verb_form=past_participle", "gesprochen"). form("sprechen", "number=singular;verb_form=imperative", "sprich"). form("sprechen", "number=plural;verb_form=imperative", "sprecht").
irregular("geben").
form("geben", "number=singular;person=first;verb_form=present", "gebe"). form("geben", "number=singular;person=second;verb_form=present", "gibst"). form("geben", "number=singular;person=third;verb_form=present", "gibt"). form("geben", "number=plural;person=first;verb_form=present", "geben"). form("geben", "number=plural;person=second;verb_form=present", "gebt"). form("geben", "number=plural;person=third;verb_form=present", "geben").
form("geben", "number=singular;person=first;verb_form=past", "gab"). form("geben", "number=singular;person=second;verb_form=past", "gabst"). form("geben", "number=singular;person=third;verb_form=past", "gab"). form("geben", "number=plural;person=first;verb_form=past", "gaben"). form("geben", "number=plural;person=second;verb_form=past", "gabt"). form("geben", "number=plural;person=third;verb_form=past", "gaben").
form("geben", "verb_form=past_participle", "gegeben"). form("geben", "number=singular;verb_form=imperative", "gib"). form("geben", "number=plural;verb_form=imperative", "gebt").
irregular("nehmen").
form("nehmen", "number=singular;person=first;verb_form=present", "nehme"). form("nehmen", "number=singular;person=second;verb_form=present", "nimmst"). form("nehmen", "number=singular;person=third;verb_form=present", "nimmt"). form("nehmen", "number=plural;person=first;verb_form=present", "nehmen"). form("nehmen", "number=plural;person=second;verb_form=present", "nehmt"). form("nehmen", "number=plural;person=third;verb_form=present", "nehmen").
form("nehmen", "number=singular;person=first;verb_form=past", "nahm"). form("nehmen", "number=singular;person=second;verb_form=past", "nahmst"). form("nehmen", "number=singular;person=third;verb_form=past", "nahm"). form("nehmen", "number=plural;person=first;verb_form=past", "nahmen"). form("nehmen", "number=plural;person=second;verb_form=past", "nahmt"). form("nehmen", "number=plural;person=third;verb_form=past", "nahmen").
form("nehmen", "verb_form=past_participle", "genommen"). form("nehmen", "number=singular;verb_form=imperative", "nimm"). form("nehmen", "number=plural;verb_form=imperative", "nehmt").
irregular("lesen").
form("lesen", "number=singular;person=first;verb_form=present", "lese"). form("lesen", "number=singular;person=second;verb_form=present", "liest"). form("lesen", "number=singular;person=third;verb_form=present", "liest"). form("lesen", "number=plural;person=first;verb_form=present", "lesen"). form("lesen", "number=plural;person=second;verb_form=present", "lest"). form("lesen", "number=plural;person=third;verb_form=present", "lesen").
form("lesen", "number=singular;person=first;verb_form=past", "las"). form("lesen", "number=singular;person=second;verb_form=past", "last"). form("lesen", "number=singular;person=third;verb_form=past", "las"). form("lesen", "number=plural;person=first;verb_form=past", "lasen"). form("lesen", "number=plural;person=second;verb_form=past", "last"). form("lesen", "number=plural;person=third;verb_form=past", "lasen").
form("lesen", "verb_form=past_participle", "gelesen"). form("lesen", "number=singular;verb_form=imperative", "lies"). form("lesen", "number=plural;verb_form=imperative", "lest").
irregular("essen").
form("essen", "number=singular;person=first;verb_form=present", "esse"). form("essen", "number=singular;person=second;verb_form=present", "isst"). form("essen", "number=singular;person=third;verb_form=present", "isst"). form("essen", "number=plural;person=first;verb_form=present", "essen"). form("essen", "number=plural;person=second;verb_form=present", "esst"). form("essen", "number=plural;person=third;verb_form=present", "essen").
form("essen", "number=singular;person=first;verb_form=past", "aß"). form("essen", "number=singular;person=second;verb_form=past", "aßest"). form("essen", "number=singular;person=third;verb_form=past", "aß"). form("essen", "number=plural;person=first;verb_form=past", "aßen"). form("essen", "number=plural;person=second;verb_form=past", "aßt"). form("essen", "number=plural;person=third;verb_form=past", "aßen").
form("essen", "verb_form=past_participle", "gegessen"). form("essen", "number=singular;verb_form=imperative", "iss"). form("essen", "number=plural;verb_form=imperative", "esst").
irregular("schreiben").
form("schreiben", "number=singular;person=first;verb_form=present", "schreibe"). form("schreiben", "number=singular;person=second;verb_form=present", "schreibst"). form("schreiben", "number=singular;person=third;verb_form=present", "schreibt"). form("schreiben", "number=plural;person=first;verb_form=present", "schreiben"). form("schreiben", "number=plural;person=second;verb_form=present", "schreibt"). form("schreiben", "number=plural;person=third;verb_form=present", "schreiben").
form("schreiben", "number=singular;person=first;verb_form=past", "schrieb"). form("schreiben", "number=singular;person=second;verb_form=past", "schriebst"). form("schreiben", "number=singular;person=third;verb_form=past", "schrieb"). form("schreiben", "number=plural;person=first;verb_form=past", "schrieben"). form("schreiben", "number=plural;person=second;verb_form=past", "schriebt"). form("schreiben", "number=plural;person=third;verb_form=past", "schrieben").
form("schreiben", "verb_form=past_participle", "geschrieben"). form("schreiben", "number=singular;verb_form=imperative", "schreib"). form("schreiben", "number=plural;verb_form=imperative", "schreibt").
irregular("finden").
form("finden", "number=singular;person=first;verb_form=present", "finde"). form("finden", "number=singular;person=second;verb_form=present", "findest"). form("finden", "number=singular;person=third;verb_form=present", "findet"). form("finden", "number=plural;person=first;verb_form=present", "finden"). form("finden", "number=plural;person=second;verb_form=present", "findet"). form("finden", "number=plural;person=third;verb_form=present", "finden").
form("finden", "number=singular;person=first;verb_form=past", "fand"). form("finden", "number=singular;person=second;verb_form=past", "fandest"). form("finden", "number=singular;person=third;verb_form=past", "fand"). form("finden", "number=plural;person=first;verb_form=past", "fanden"). form("finden", "number=plural;person=second;verb_form=past", "fandet"). form("finden", "number=plural;person=third;verb_form=past", "fanden").
form("finden", "verb_form=past_participle", "gefunden"). form("finden", "number=singular;verb_form=imperative", "finde"). form("finden", "number=plural;verb_form=imperative", "findet").
irregular("trinken").
form("trinken", "number=singular;person=first;verb_form=present", "trinke"). form("trinken", "number=singular;person=second;verb_form=present", "trinkst"). form("trinken", "number=singular;person=third;verb_form=present", "trinkt"). form("trinken", "number=plural;person=first;verb_form=present", "trinken"). form("trinken", "number=plural;person=second;verb_form=present", "trinkt"). form("trinken", "number=plural;person=third;verb_form=present", "trinken").
form("trinken", "number=singular;person=first;verb_form=past", "trank"). form("trinken", "number=singular;person=second;verb_form=past", "trankst"). form("trinken", "number=singular;person=third;verb_form=past", "trank"). form("trinken", "number=plural;person=first;verb_form=past", "tranken"). form("trinken", "number=plural;person=second;verb_form=past", "trankt"). form("trinken", "number=plural;person=third;verb_form=past", "tranken").
form("trinken", "verb_form=past_participle", "getrunken"). form("trinken", "number=singular;verb_form=imperative", "trink"). form("trinken", "number=plural;verb_form=imperative", "trinkt").
irregular("bleiben").
form("bleiben", "number=singular;person=first;verb_form=present", "bleibe"). form("bleiben", "number=singular;person=second;verb_form=present", "bleibst"). form("bleiben", "number=singular;person=third;verb_form=present", "bleibt"). form("bleiben", "number=plural;person=first;verb_form=present", "bleiben"). form("bleiben", "number=plural;person=second;verb_form=present", "bleibt"). form("bleiben", "number=plural;person=third;verb_form=present", "bleiben").
form("bleiben", "number=singular;person=first;verb_form=past", "blieb"). form("bleiben", "number=singular;person=second;verb_form=past", "bliebst"). form("bleiben", "number=singular;person=third;verb_form=past", "blieb"). form("bleiben", "number=plural;person=first;verb_form=past", "blieben"). form("bleiben", "number=plural;person=second;verb_form=past", "bliebt"). form("bleiben", "number=plural;person=third;verb_form=past", "blieben").
form("bleiben", "verb_form=past_participle", "geblieben"). form("bleiben", "number=singular;verb_form=imperative", "bleib"). form("bleiben", "number=plural;verb_form=imperative", "bleibt").
irregular("laufen").
form("laufen", "number=singular;person=first;verb_form=present", "laufe"). form("laufen", "number=singular;person=second;verb_form=present", "läufst"). form("laufen", "number=singular;person=third;verb_form=present", "läuft"). form("laufen", "number=plural;person=first;verb_form=present", "laufen"). form("laufen", "number=plural;person=second;verb_form=present", "lauft"). form("laufen", "number=plural;person=third;verb_form=present", "laufen").
form("laufen", "number=singular;person=first;verb_form=past", "lief"). form("laufen", "number=singular;person=second;verb_form=past", "liefst"). form("laufen", "number=singular;person=third;verb_form=past", "lief"). form("laufen", "number=plural;person=first;verb_form=past", "liefen"). form("laufen", "number=plural;person=second;verb_form=past", "lieft"). form("laufen", "number=plural;person=third;verb_form=past", "liefen").
form("laufen", "verb_form=past_participle", "gelaufen"). form("laufen", "number=singular;verb_form=imperative", "lauf"). form("laufen", "number=plural;verb_form=imperative", "lauft").
irregular("schlafen").
form("schlafen", "number=singular;person=first;verb_form=present", "schlafe"). form("schlafen", "number=singular;person=second;verb_form=present", "schläfst"). form("schlafen", "number=singular;person=third;verb_form=present", "schläft"). form("schlafen", "number=plural;person=first;verb_form=present", "schlafen"). form("schlafen", "number=plural;person=second;verb_form=present", "schlaft"). form("schlafen", "number=plural;person=third;verb_form=present", "schlafen").
form("schlafen", "number=singular;person=first;verb_form=past", "schlief"). form("schlafen", "number=singular;person=second;verb_form=past", "schliefst"). form("schlafen", "number=singular;person=third;verb_form=past", "schlief"). form("schlafen", "number=plural;person=first;verb_form=past", "schliefen"). form("schlafen", "number=plural;person=second;verb_form=past", "schlieft"). form("schlafen", "number=plural;person=third;verb_form=past", "schliefen").
form("schlafen", "verb_form=past_participle", "geschlafen"). form("schlafen", "number=singular;verb_form=imperative", "schlaf"). form("schlafen", "number=plural;verb_form=imperative", "schlaft").
irregular("denken").
form("denken", "number=singular;person=first;verb_form=present", "denke"). form("denken", "number=singular;person=second;verb_form=present", "denkst"). form("denken", "number=singular;person=third;verb_form=present", "denkt"). form("denken", "number=plural;person=first;verb_form=present", "denken"). form("denken", "number=plural;person=second;verb_form=present", "denkt"). form("denken", "number=plural;person=third;verb_form=present", "denken").
form("denken", "number=singular;person=first;verb_form=past", "dachte"). form("denken", "number=singular;person=second;verb_form=past", "dachtest"). form("denken", "number=singular;person=third;verb_form=past", "dachte"). form("denken", "number=plural;person=first;verb_form=past", "dachten"). form("denken", "number=plural;person=second;verb_form=past", "dachtet"). form("denken", "number=plural;person=third;verb_form=past", "dachten").
form("denken", "verb_form=past_participle", "gedacht"). form("denken", "number=singular;verb_form=imperative", "denk"). form("denken", "number=plural;verb_form=imperative", "denkt").
irregular("bringen").
form("bringen", "number=singular;person=first;verb_form=present", "bringe"). form("bringen", "number=singular;person=second;verb_form=present", "bringst"). form("bringen", "number=singular;person=third;verb_form=present", "bringt"). form("bringen", "number=plural;person=first;verb_form=present", "bringen"). form("bringen", "number=plural;person=second;verb_form=present", "bringt"). form("bringen", "number=plural;person=third;verb_form=present", "bringen").
form("bringen", "number=singular;person=first;verb_form=past", "brachte"). form("bringen", "number=singular;person=second;verb_form=past", "brachtest"). form("bringen", "number=singular;person=third;verb_form=past", "brachte"). form("bringen", "number=plural;person=first;verb_form=past", "brachten"). form("bringen", "number=plural;person=second;verb_form=past", "brachtet"). form("bringen", "number=plural;person=third;verb_form=past", "brachten").
form("bringen", "verb_form=past_participle", "gebracht"). form("bringen", "number=singular;verb_form=imperative", "bring"). form("bringen", "number=plural;verb_form=imperative", "bringt").
irregular("wissen").
form("wissen", "number=singular;person=first;verb_form=present", "weiß"). form("wissen", "number=singular;person=second;verb_form=present", "weißt"). form("wissen", "number=singular;person=third;verb_form=present", "weiß"). form("wissen", "number=plural;person=first;verb_form=present", "wissen"). form("wissen", "number=plural;person=second;verb_form=present", "wisst"). form("wissen", "number=plural;person=third;verb_form=present", "wissen").
form("wissen", "number=singular;person=first;verb_form=past", "wusste"). form("wissen", "number=singular;person=second;verb_form=past", "wusstest"). form("wissen", "number=singular;person=third;verb_form=past", "wusste"). form("wissen", "number=plural;person=first;verb_form=past", "wussten"). form("wissen", "number=plural;person=second;verb_form=past", "wusstet"). form("wissen", "number=plural;person=third;verb_form=past", "wussten").
form("wissen", "verb_form=past_participle", "gewusst"). form("wissen", "number=singular;verb_form=imperative", "wisse"). form("wissen", "number=plural;verb_form=imperative", "wisst").
irregular("können").
form("können", "number=singular;person=first;verb_form=present", "kann"). form("können", "number=singular;person=second;verb_form=present", "kannst"). form("können", "number=singular;person=third;verb_form=present", "kann"). form("können", "number=plural;person=first;verb_form=present", "können"). form("können", "number=plural;person=second;verb_form=present", "könnt"). form("können", "number=plural;person=third;verb_form=present", "können").
form("können", "number=singular;person=first;verb_form=past", "konnte"). form("können", "number=singular;person=second;verb_form=past", "konntest"). form("können", "number=singular;person=third;verb_form=past", "konnte"). form("können", "number=plural;person=first;verb_form=past", "konnten"). form("können", "number=plural;person=second;verb_form=past", "konntet"). form("können", "number=plural;person=third;verb_form=past", "konnten").
form("können", "verb_form=past_participle", "gekonnt").
irregular("müssen").
form("müssen", "number=singular;person=first;verb_form=present", "muss"). form("müssen", "number=singular;person=second;verb_form=present", "musst"). form("müssen", "number=singular;person=third;verb_form=present", "muss"). form("müssen", "number=plural;person=first;verb_form=present", "müssen"). form("müssen", "number=plural;person=second;verb_form=present", "müsst"). form("müssen", "number=plural;person=third;verb_form=present", "müssen").
form("müssen", "number=singular;person=first;verb_form=past", "musste"). form("müssen", "number=singular;person=second;verb_form=past", "musstest"). form("müssen", "number=singular;person=third;verb_form=past", "musste"). form("müssen", "number=plural;person=first;verb_form=past", "mussten"). form("müssen", "number=plural;person=second;verb_form=past", "musstet"). form("müssen", "number=plural;person=third;verb_form=past", "mussten").
form("müssen", "verb_form=past_participle", "gemusst").
irregular("wollen").
form("wollen", "number=singular;person=first;verb_form=present", "will"). form("wollen", "number=singular;person=second;verb_form=present", "willst"). form("wollen", "number=singular;person=third;verb_form=present", "will"). form("wollen", "number=plural;person=first;verb_form=present", "wollen"). form("wollen", "number=plural;person=second;verb_form=present", "wollt"). form("wollen", "number=plural;person=third;verb_form=present", "wollen").
form("wollen", "number=singular;person=first;verb_form=past", "wollte"). form("wollen", "number=singular;person=second;verb_form=past", "wolltest"). form("wollen", "number=singular;person=third;verb_form=past", "wollte"). form("wollen", "number=plural;person=first;verb_form=past", "wollten"). form("wollen", "number=plural;person=second;verb_form=past", "wolltet"). form("wollen", "number=plural;person=third;verb_form=past", "wollten").
form("wollen", "verb_form=past_participle", "gewollt").
