"""Generate rules/de/*.lp and their golden tests.

The rule files are written from the class/ending tables below; the golden
tests use full word forms typed out separately (EXPECTED_*).
Run from the repository root: python tools/gen_de.py
"""

from pathlib import Path

R = Path("rules/de")
T = Path("tests/de")
CASES = ["nominative", "accusative", "dative", "genitive"]
GENDERS = ["masculine", "feminine", "neuter"]
PERSONS = [("first", "singular"), ("second", "singular"), ("third", "singular"),
           ("first", "plural"), ("second", "plural"), ("third", "plural")]


def w(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8", newline="\n")


def facts(pred: str, table: dict) -> str:
    return "".join(" ".join(f'{pred}("{l}", {c}).' for l in ls) + "\n" for c, ls in table.items())


w(R / "lang.yaml", """name: German
iso639_3: deu
categories:
  - nouns
  - verbs
  - adjectives
  - articles
  - pronouns
""")

w(R / "features.yaml", """dimensions:
  case:
    values: [nominative, accusative, dative, genitive]
  number:
    values: [singular, plural]
  gender:
    values: [masculine, feminine, neuter]
  person:
    values: [first, second, third]
  verb_form:
    values: [infinitive, present, past, past_participle, imperative]
  degree:
    values: [positive, comparative, superlative]
  declension:
    values: [strong, weak, mixed]
""")

# ============================================================================= nouns
# class: (genitive singular ending, oblique singular ending (acc/dat/gen of weak nouns),
#         plural ending, dative plural extra ending)
NOUN_CLASSES = {
    "strong_e":   ["Hund", "Tag", "Tisch", "Brief", "Freund", "Berg", "Jahr", "Spiel", "Brot"],
    "strong_er":  ["Kind", "Bild", "Lied", "Feld"],
    "strong_zero": ["Lehrer", "Fenster", "Zimmer", "Computer", "Onkel", "Schüler"],
    "strong_zero_n": ["Mädchen", "Wagen", "Kuchen", "Brötchen"],
    "s_plural":   ["Auto", "Hotel", "Kino", "Radio", "Foto", "Handy"],
    "fem_en":     ["Frau", "Zeitung", "Uhr", "Tür", "Wohnung", "Arbeit"],
    "fem_n":      ["Blume", "Straße", "Lampe", "Schule", "Tasche", "Frage"],
    "fem_nen":    ["Lehrerin", "Freundin", "Ärztin", "Studentin"],
    "weak_en":    ["Student", "Mensch", "Präsident", "Soldat"],
    "weak_n":     ["Junge", "Kollege", "Kunde", "Affe"],
}
# forms: sg nom, acc, dat, gen / pl nom, acc, dat, gen -- as (strip, add) pairs on the lemma
NOUN_RULES = {
    "strong_e":      (["", "", "", "es"], ["e", "e", "en", "e"]),
    "strong_er":     (["", "", "", "es"], ["er", "er", "ern", "er"]),
    "strong_zero":   (["", "", "", "s"], ["", "", "n", ""]),
    "strong_zero_n": (["", "", "", "s"], ["", "", "", ""]),
    "s_plural":      (["", "", "", "s"], ["s", "s", "s", "s"]),
    "fem_en":        (["", "", "", ""], ["en", "en", "en", "en"]),
    "fem_n":         (["", "", "", ""], ["n", "n", "n", "n"]),
    "fem_nen":       (["", "", "", ""], ["nen", "nen", "nen", "nen"]),
    "weak_en":       (["", "en", "en", "en"], ["en", "en", "en", "en"]),
    "weak_n":        (["", "n", "n", "n"], ["n", "n", "n", "n"]),
}
IRREGULAR_NOUNS = {  # sg nom acc dat gen | pl nom acc dat gen
    "Mann": "Mann Mann Mann Mannes | Männer Männer Männern Männer",
    "Buch": "Buch Buch Buch Buches | Bücher Bücher Büchern Bücher",
    "Haus": "Haus Haus Haus Hauses | Häuser Häuser Häusern Häuser",
    "Apfel": "Apfel Apfel Apfel Apfels | Äpfel Äpfel Äpfeln Äpfel",
    "Vater": "Vater Vater Vater Vaters | Väter Väter Vätern Väter",
    "Mutter": "Mutter Mutter Mutter Mutter | Mütter Mütter Müttern Mütter",
    "Bruder": "Bruder Bruder Bruder Bruders | Brüder Brüder Brüdern Brüder",
    "Tochter": "Tochter Tochter Tochter Tochter | Töchter Töchter Töchtern Töchter",
    "Stadt": "Stadt Stadt Stadt Stadt | Städte Städte Städten Städte",
    "Nacht": "Nacht Nacht Nacht Nacht | Nächte Nächte Nächten Nächte",
    "Museum": "Museum Museum Museum Museums | Museen Museen Museen Museen",
    "Herr": "Herr Herrn Herrn Herrn | Herren Herren Herren Herren",
}

n = ["""% rules/de/nouns.lp
% German noun declension: 4 cases x 2 numbers (features: case, number).
%
% Each lemma is assigned a declension class with noun_class/2; a lemma without
% a class produces no forms. Classes (genitive singular / plural / dative plural):
%   strong_e       Hund   -> Hundes / Hunde / Hunden
%   strong_er      Kind   -> Kindes / Kinder / Kindern
%   strong_zero    Lehrer -> Lehrers / Lehrer / Lehrern
%   strong_zero_n  Mädchen-> Mädchens / Mädchen / Mädchen   (plural already ends in -n)
%   s_plural       Auto   -> Autos / Autos / Autos
%   fem_en         Frau   -> Frau / Frauen / Frauen
%   fem_n          Blume  -> Blume / Blumen / Blumen
%   fem_nen        Lehrerin -> Lehrerin / Lehrerinnen / Lehrerinnen
%   weak_en        Student -> Studenten in every form except the nominative singular
%   weak_n         Junge  -> Jungen in every form except the nominative singular
% Nouns with an umlaut or other stem change in the plural (Mann -> Männer) are
% listed as irregular with all eight forms.
%
% Not covered: the optional dative singular -e (dem Tage), genitive variants
% (-s vs -es), and mixed-declension nouns such as Name/Namens.

"""]
for cls, (sg, pl) in NOUN_RULES.items():
    n.append(f"% --- {cls}\n")
    for number, ends in (("singular", sg), ("plural", pl)):
        for case, end in zip(CASES, ends):
            head = "L" if end == "" else f'@suffix(L, "{end}")'
            n.append(f'form(L, "case={case};number={number}", {head}) :- input_lemma(L), noun_class(L, {cls}).\n')
    n.append("\n")
n.append("% --- class membership\n" + facts("noun_class", NOUN_CLASSES))
n.append("\n% --- irregular nouns (all forms listed)\n")
for lemma, forms in IRREGULAR_NOUNS.items():
    sg, pl = (part.split() for part in forms.split("|"))
    n.append(f'irregular("{lemma}").\n')
    for number, fs in (("singular", sg), ("plural", pl)):
        n.append(" ".join(f'form("{lemma}", "case={c};number={number}", "{f}").' for c, f in zip(CASES, fs)) + "\n")
w(R / "nouns.lp", "".join(n))

# ============================================================================= verbs
VERB_CLASSES = {
    "weak": ["machen", "spielen", "lernen", "kaufen", "sagen", "wohnen", "hören", "kochen", "fragen", "brauchen", "zeigen", "glauben"],
    "weak_t": ["arbeiten", "warten", "antworten", "reden", "baden", "öffnen"],
    "weak_no_ge": ["studieren", "telefonieren", "reparieren", "fotografieren", "besuchen", "bezahlen", "erklären", "erzählen", "verkaufen"],
}
# endings added to the stem (lemma minus "-en")
VERB_ENDINGS = {
    "weak": {"present": ["e", "st", "t", "en", "t", "en"], "past": ["te", "test", "te", "ten", "tet", "ten"],
             "imp": ["", "t"], "pp": ("ge", "t")},
    "weak_t": {"present": ["e", "est", "et", "en", "et", "en"], "past": ["ete", "etest", "ete", "eten", "etet", "eten"],
               "imp": ["e", "et"], "pp": ("ge", "et")},
    "weak_no_ge": {"present": ["e", "st", "t", "en", "t", "en"], "past": ["te", "test", "te", "ten", "tet", "ten"],
                   "imp": ["", "t"], "pp": ("", "t")},
}
IRREGULAR_VERBS = {  # present (6) | past (6) | past participle | imperative sg, pl (or -)
    "sein": "bin bist ist sind seid sind | war warst war waren wart waren | gewesen | sei seid",
    "haben": "habe hast hat haben habt haben | hatte hattest hatte hatten hattet hatten | gehabt | hab habt",
    "werden": "werde wirst wird werden werdet werden | wurde wurdest wurde wurden wurdet wurden | geworden | werde werdet",
    "gehen": "gehe gehst geht gehen geht gehen | ging gingst ging gingen gingt gingen | gegangen | geh geht",
    "kommen": "komme kommst kommt kommen kommt kommen | kam kamst kam kamen kamt kamen | gekommen | komm kommt",
    "sehen": "sehe siehst sieht sehen seht sehen | sah sahst sah sahen saht sahen | gesehen | sieh seht",
    "fahren": "fahre fährst fährt fahren fahrt fahren | fuhr fuhrst fuhr fuhren fuhrt fuhren | gefahren | fahr fahrt",
    "sprechen": "spreche sprichst spricht sprechen sprecht sprechen | sprach sprachst sprach sprachen spracht sprachen | gesprochen | sprich sprecht",
    "geben": "gebe gibst gibt geben gebt geben | gab gabst gab gaben gabt gaben | gegeben | gib gebt",
    "nehmen": "nehme nimmst nimmt nehmen nehmt nehmen | nahm nahmst nahm nahmen nahmt nahmen | genommen | nimm nehmt",
    "lesen": "lese liest liest lesen lest lesen | las last las lasen last lasen | gelesen | lies lest",
    "essen": "esse isst isst essen esst essen | aß aßest aß aßen aßt aßen | gegessen | iss esst",
    "schreiben": "schreibe schreibst schreibt schreiben schreibt schreiben | schrieb schriebst schrieb schrieben schriebt schrieben | geschrieben | schreib schreibt",
    "finden": "finde findest findet finden findet finden | fand fandest fand fanden fandet fanden | gefunden | finde findet",
    "trinken": "trinke trinkst trinkt trinken trinkt trinken | trank trankst trank tranken trankt tranken | getrunken | trink trinkt",
    "bleiben": "bleibe bleibst bleibt bleiben bleibt bleiben | blieb bliebst blieb blieben bliebt blieben | geblieben | bleib bleibt",
    "laufen": "laufe läufst läuft laufen lauft laufen | lief liefst lief liefen lieft liefen | gelaufen | lauf lauft",
    "schlafen": "schlafe schläfst schläft schlafen schlaft schlafen | schlief schliefst schlief schliefen schlieft schliefen | geschlafen | schlaf schlaft",
    "denken": "denke denkst denkt denken denkt denken | dachte dachtest dachte dachten dachtet dachten | gedacht | denk denkt",
    "bringen": "bringe bringst bringt bringen bringt bringen | brachte brachtest brachte brachten brachtet brachten | gebracht | bring bringt",
    "wissen": "weiß weißt weiß wissen wisst wissen | wusste wusstest wusste wussten wusstet wussten | gewusst | wisse wisst",
    "können": "kann kannst kann können könnt können | konnte konntest konnte konnten konntet konnten | gekonnt | -",
    "müssen": "muss musst muss müssen müsst müssen | musste musstest musste mussten musstet mussten | gemusst | -",
    "wollen": "will willst will wollen wollt wollen | wollte wolltest wollte wollten wolltet wollten | gewollt | -",
}


def pkey(person, number, vf):
    return f"number={number};person={person};verb_form={vf}"


v = ["""% rules/de/verbs.lp
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

"""]
for cls, e in VERB_ENDINGS.items():
    v.append(f"% --- {cls}\n")
    for tense in ("present", "past"):
        for (person, number), end in zip(PERSONS, e[tense]):
            v.append(f'form(L, "{pkey(person, number, tense)}", @suffix(S, "{end}")) :- verb_class(L, {cls}), stem(L, S).\n')
    pre, post = e["pp"]
    if pre:
        v.append(f'form(L, "verb_form=past_participle", @prefix(P, "{pre}")) :- verb_class(L, {cls}), stem(L, S), P = @suffix(S, "{post}").\n')
    else:
        v.append(f'form(L, "verb_form=past_participle", @suffix(S, "{post}")) :- verb_class(L, {cls}), stem(L, S).\n')
    for number, end in zip(("singular", "plural"), e["imp"]):
        head = "S" if end == "" else f'@suffix(S, "{end}")'
        v.append(f'form(L, "number={number};verb_form=imperative", {head}) :- verb_class(L, {cls}), stem(L, S).\n')
    v.append("\n")
v.append("% --- class membership\n" + facts("verb_class", VERB_CLASSES))
v.append("\n% --- strong, mixed and modal verbs (all forms listed)\n")
for lemma, forms in IRREGULAR_VERBS.items():
    pres, past, pp, imp = (part.split() for part in forms.split("|"))
    v.append(f'irregular("{lemma}").\n')
    for tense, fs in (("present", pres), ("past", past)):
        v.append(" ".join(f'form("{lemma}", "{pkey(p, nb, tense)}", "{f}").' for (p, nb), f in zip(PERSONS, fs)) + "\n")
    line = f'form("{lemma}", "verb_form=past_participle", "{pp[0]}").'
    if imp != ["-"]:
        line += f' form("{lemma}", "number=singular;verb_form=imperative", "{imp[0]}").'
        line += f' form("{lemma}", "number=plural;verb_form=imperative", "{imp[1]}").'
    v.append(line + "\n")
w(R / "verbs.lp", "".join(v))

# ============================================================================= adjectives
ADJ_REGULAR = ["klein", "schön", "schnell", "billig", "langsam", "freundlich", "wichtig", "schwer", "reich", "tief"]
ADJ_EST = ["neu", "leicht", "schlecht", "laut", "heiß", "süß", "breit", "bunt"]   # superlative -esten
ADJ_STEM = {"dunkel": "dunkl", "teuer": "teur", "sauer": "saur", "edel": "edl"}   # e dropped before endings
IRREGULAR_DEGREE = {  # comparative, superlative
    "gut": ("besser", "am besten"), "viel": ("mehr", "am meisten"), "groß": ("größer", "am größten"),
    "alt": ("älter", "am ältesten"), "jung": ("jünger", "am jüngsten"), "kalt": ("kälter", "am kältesten"),
    "warm": ("wärmer", "am wärmsten"), "lang": ("länger", "am längsten"), "kurz": ("kürzer", "am kürzesten"),
    "hoch": ("höher", "am höchsten"), "nah": ("näher", "am nächsten"), "stark": ("stärker", "am stärksten"),
    "arm": ("ärmer", "am ärmsten"),
}
DECL = {  # masculine, feminine, neuter (each nom acc dat gen), plural
    "strong": (["er", "en", "em", "en"], ["e", "e", "er", "er"], ["es", "es", "em", "en"], ["e", "e", "en", "er"]),
    "weak": (["e", "en", "en", "en"], ["e", "e", "en", "en"], ["e", "e", "en", "en"], ["en", "en", "en", "en"]),
    "mixed": (["er", "en", "en", "en"], ["e", "e", "en", "en"], ["es", "es", "en", "en"], ["en", "en", "en", "en"]),
}
a = ["""% rules/de/adjectives.lp
% German adjectives (features: degree; for attributive forms also
% declension, case, gender, number).
%
% Comparison:
%   regular (no entry needed)  klein -> kleiner, am kleinsten
%   adj_class(L, est)          neu   -> neuer, am neuesten   (superlative -esten)
%   adj_stem(L, S)             dunkel -> dunkler, am dunkelsten; declension on "dunkl-"
%   irregular                  gut -> besser, am besten; groß -> größer, am größten
% Attributive declension (every adjective, on its stem):
%   strong  (no article)          guter Wein, gute Milch, gutes Brot, gute Weine
%   weak    (after der/die/das)   der gute Wein ...
%   mixed   (after ein/kein/mein) ein guter Wein ...
% Declension keys: "case=...;declension=...;gender=...;number=singular" and
% "case=...;declension=...;number=plural".
%
% Not covered: declension of comparative/superlative forms (der kleinere),
% and the stem change of "hoch" in declension (hohe) -- use the positive "hoh-"
% via adj_stem if needed.

form(L, "degree=positive", L) :- input_lemma(L).

has_stem(L) :- adj_stem(L, _).
stem(L, S) :- input_lemma(L), adj_stem(L, S).
stem(L, L) :- input_lemma(L), not has_stem(L).

% --- comparison
form(L, "degree=comparative", @suffix(S, "er")) :- stem(L, S), not irregular(L).
form(L, "degree=superlative", @prefix(P, "am ")) :- input_lemma(L), not irregular(L), not adj_class(L, est), P = @suffix(L, "sten").
form(L, "degree=superlative", @prefix(P, "am ")) :- input_lemma(L), not irregular(L), adj_class(L, est), P = @suffix(L, "esten").

"""]
for decl, (m, f, nt, pl) in DECL.items():
    a.append(f"% --- {decl} declension\n")
    for gender, ends in zip(GENDERS, (m, f, nt)):
        for case, end in zip(CASES, ends):
            a.append(f'form(L, "case={case};declension={decl};gender={gender};number=singular", @suffix(S, "{end}")) :- stem(L, S).\n')
    for case, end in zip(CASES, pl):
        a.append(f'form(L, "case={case};declension={decl};number=plural", @suffix(S, "{end}")) :- stem(L, S).\n')
    a.append("\n")
a.append("% --- classes\n")
a.append(" ".join(f'adj_class("{l}", est).' for l in ADJ_EST) + "\n")
a.append(" ".join(f'adj_stem("{l}", "{s}").' for l, s in ADJ_STEM.items()) + "\n")
a.append("% hoch declines on hoh- (hohe, hoher)\nadj_stem(\"hoch\", \"hoh\").\n")
a.append("\n% --- irregular comparison\n")
for lemma, (comp, sup) in IRREGULAR_DEGREE.items():
    a.append(f'irregular("{lemma}"). form("{lemma}", "degree=comparative", "{comp}"). form("{lemma}", "degree=superlative", "{sup}").\n')
w(R / "adjectives.lp", "".join(a))

# ============================================================================= articles & determiners
DER = {"masculine": "der den dem des", "feminine": "die die der der", "neuter": "das das dem des", "plural": "die die den der"}
EIN_WORD = (["", "en", "em", "es"], ["e", "e", "er", "er"], ["", "", "em", "es"], ["e", "e", "en", "er"])
DER_WORD = (["er", "en", "em", "es"], ["e", "e", "er", "er"], ["es", "es", "em", "es"], ["e", "e", "en", "er"])
ar = ["""% rules/de/articles.lp
% German articles and determiners (features: case, gender, number).
%
%   der                       definite article, listed in full
%   ein-words (ein_word)      ein, kein, mein, dein, sein, unser: stem + ending
%                             ein has no plural
%   der-words (der_word)      dieser, jeder, welcher: stem (lemma minus -er) + ending
% Keys: "case=...;gender=...;number=singular" and "case=...;number=plural".
%
% Not covered: "euer" (stem change eure), "ihr" (identical to other forms).

"""]
for gender, forms in DER.items():
    for case, f in zip(CASES, forms.split()):
        key = f"case={case};number=plural" if gender == "plural" else f"case={case};gender={gender};number=singular"
        ar.append(f'form("der", "{key}", "{f}").\n')
ar.append("\n")
for cls, table, stem_expr in (("ein_word", EIN_WORD, "L"), ("der_word", DER_WORD, '@strip_suffix_add(L, 2, "")')):
    ar.append(f"% --- {cls}\n")
    ar.append(f"stem(L, {stem_expr}) :- input_lemma(L), det_class(L, {cls}).\n")
    for gender, ends in zip(GENDERS + ["plural"], table):
        for case, end in zip(CASES, ends):
            key = f"case={case};number=plural" if gender == "plural" else f"case={case};gender={gender};number=singular"
            head = "S" if end == "" else f'@suffix(S, "{end}")'
            guard = ', not singular_only(L)' if gender == "plural" else ""
            ar.append(f'form(L, "{key}", {head}) :- det_class(L, {cls}), stem(L, S){guard}.\n')
    ar.append("\n")
ar.append(" ".join(f'det_class("{l}", ein_word).' for l in ["ein", "kein", "mein", "dein", "sein", "unser"]) + "\n")
ar.append(" ".join(f'det_class("{l}", der_word).' for l in ["dieser", "jeder", "welcher"]) + "\n")
ar.append('singular_only("ein").\n')
w(R / "articles.lp", "".join(ar))

# ============================================================================= pronouns
PRON = [  # lemma, number, nom acc dat gen
    ("ich", "singular", "ich mich mir meiner"), ("du", "singular", "du dich dir deiner"),
    ("er", "singular", "er ihn ihm seiner"), ("sie", "singular", "sie sie ihr ihrer"),
    ("es", "singular", "es es ihm seiner"), ("wir", "plural", "wir uns uns unser"),
    ("ihr", "plural", "ihr euch euch euer"), ("sie", "plural", "sie sie ihnen ihrer"),
    ("Sie", "plural", "Sie Sie Ihnen Ihrer"),
]
pr = ["""% rules/de/pronouns.lp
% German personal pronouns (features: case, number). The lemma is the
% nominative; "sie" has a singular (she) and a plural (they) paradigm, "Sie" is
% the formal address. Every form is listed.

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


EXPECTED_NOUNS = {  # sg nom acc dat gen | pl nom acc dat gen
    "Hund": "Hund Hund Hund Hundes | Hunde Hunde Hunden Hunde",
    "Jahr": "Jahr Jahr Jahr Jahres | Jahre Jahre Jahren Jahre",
    "Kind": "Kind Kind Kind Kindes | Kinder Kinder Kindern Kinder",
    "Lehrer": "Lehrer Lehrer Lehrer Lehrers | Lehrer Lehrer Lehrern Lehrer",
    "Mädchen": "Mädchen Mädchen Mädchen Mädchens | Mädchen Mädchen Mädchen Mädchen",
    "Auto": "Auto Auto Auto Autos | Autos Autos Autos Autos",
    "Frau": "Frau Frau Frau Frau | Frauen Frauen Frauen Frauen",
    "Blume": "Blume Blume Blume Blume | Blumen Blumen Blumen Blumen",
    "Lehrerin": "Lehrerin Lehrerin Lehrerin Lehrerin | Lehrerinnen Lehrerinnen Lehrerinnen Lehrerinnen",
    "Student": "Student Studenten Studenten Studenten | Studenten Studenten Studenten Studenten",
    "Junge": "Junge Jungen Jungen Jungen | Jungen Jungen Jungen Jungen",
    "Mann": "Mann Mann Mann Mannes | Männer Männer Männern Männer",
    "Apfel": "Apfel Apfel Apfel Apfels | Äpfel Äpfel Äpfeln Äpfel",
    "Mutter": "Mutter Mutter Mutter Mutter | Mütter Mütter Müttern Mütter",
    "Museum": "Museum Museum Museum Museums | Museen Museen Museen Museen",
    "Herr": "Herr Herrn Herrn Herrn | Herren Herren Herren Herren",
}
docs = []
for lemma, forms in EXPECTED_NOUNS.items():
    sg, pl = (p.split() for p in forms.split("|"))
    cases = [({"case": c, "number": "singular"}, f) for c, f in zip(CASES, sg)]
    cases += [({"case": c, "number": "plural"}, f) for c, f in zip(CASES, pl)]
    docs.append(doc(lemma, "nouns", cases))
w(T / "nouns.paradigm.yaml", "---\n".join(docs))

EXPECTED_VERBS = {  # present (6) | past (6) | pp | imp sg pl
    "machen": "mache machst macht machen macht machen | machte machtest machte machten machtet machten | gemacht | mach macht",
    "spielen": "spiele spielst spielt spielen spielt spielen | spielte spieltest spielte spielten spieltet spielten | gespielt | spiel spielt",
    "arbeiten": "arbeite arbeitest arbeitet arbeiten arbeitet arbeiten | arbeitete arbeitetest arbeitete arbeiteten arbeitetet arbeiteten | gearbeitet | arbeite arbeitet",
    "öffnen": "öffne öffnest öffnet öffnen öffnet öffnen | öffnete öffnetest öffnete öffneten öffnetet öffneten | geöffnet | öffne öffnet",
    "studieren": "studiere studierst studiert studieren studiert studieren | studierte studiertest studierte studierten studiertet studierten | studiert | studier studiert",
    "besuchen": "besuche besuchst besucht besuchen besucht besuchen | besuchte besuchtest besuchte besuchten besuchtet besuchten | besucht | besuch besucht",
    "sein": "bin bist ist sind seid sind | war warst war waren wart waren | gewesen | sei seid",
    "haben": "habe hast hat haben habt haben | hatte hattest hatte hatten hattet hatten | gehabt | hab habt",
    "fahren": "fahre fährst fährt fahren fahrt fahren | fuhr fuhrst fuhr fuhren fuhrt fuhren | gefahren | fahr fahrt",
    "sprechen": "spreche sprichst spricht sprechen sprecht sprechen | sprach sprachst sprach sprachen spracht sprachen | gesprochen | sprich sprecht",
    "lesen": "lese liest liest lesen lest lesen | las last las lasen last lasen | gelesen | lies lest",
    "wissen": "weiß weißt weiß wissen wisst wissen | wusste wusstest wusste wussten wusstet wussten | gewusst | wisse wisst",
    "können": "kann kannst kann können könnt können | konnte konntest konnte konnten konntet konnten | gekonnt | -",
}
docs = []
for lemma, forms in EXPECTED_VERBS.items():
    pres, past, pp, imp = (p.split() for p in forms.split("|"))
    cases = [({"verb_form": "infinitive"}, lemma)]
    for tense, fs in (("present", pres), ("past", past)):
        cases += [({"number": nb, "person": p, "verb_form": tense}, f) for (p, nb), f in zip(PERSONS, fs)]
    cases.append(({"verb_form": "past_participle"}, pp[0]))
    if imp != ["-"]:
        cases += [({"number": "singular", "verb_form": "imperative"}, imp[0]),
                  ({"number": "plural", "verb_form": "imperative"}, imp[1])]
    docs.append(doc(lemma, "verbs", cases))
w(T / "verbs.paradigm.yaml", "---\n".join(docs))

EXPECTED_DEGREE = {
    "klein": "kleiner | am kleinsten", "schön": "schöner | am schönsten", "neu": "neuer | am neuesten",
    "leicht": "leichter | am leichtesten", "dunkel": "dunkler | am dunkelsten", "teuer": "teurer | am teuersten",
    "gut": "besser | am besten", "groß": "größer | am größten", "alt": "älter | am ältesten",
    "hoch": "höher | am höchsten", "viel": "mehr | am meisten",
}
EXPECTED_DECL = {  # m nom acc dat gen / f ... / n ... / pl ...
    ("klein", "strong"): "kleiner kleinen kleinem kleinen / kleine kleine kleiner kleiner / kleines kleines kleinem kleinen / kleine kleine kleinen kleiner",
    ("klein", "weak"): "kleine kleinen kleinen kleinen / kleine kleine kleinen kleinen / kleine kleine kleinen kleinen / kleinen kleinen kleinen kleinen",
    ("klein", "mixed"): "kleiner kleinen kleinen kleinen / kleine kleine kleinen kleinen / kleines kleines kleinen kleinen / kleinen kleinen kleinen kleinen",
    ("gut", "strong"): "guter guten gutem guten / gute gute guter guter / gutes gutes gutem guten / gute gute guten guter",
    ("dunkel", "weak"): "dunkle dunklen dunklen dunklen / dunkle dunkle dunklen dunklen / dunkle dunkle dunklen dunklen / dunklen dunklen dunklen dunklen",
    ("teuer", "mixed"): "teurer teuren teuren teuren / teure teure teuren teuren / teures teures teuren teuren / teuren teuren teuren teuren",
    ("hoch", "strong"): "hoher hohen hohem hohen / hohe hohe hoher hoher / hohes hohes hohem hohen / hohe hohe hohen hoher",
}
docs = []
for lemma, forms in EXPECTED_DEGREE.items():
    comp, sup = (p.strip() for p in forms.split("|"))
    cases = [({"degree": "positive"}, lemma), ({"degree": "comparative"}, comp), ({"degree": "superlative"}, sup)]
    for (dl, decl), table in EXPECTED_DECL.items():
        if dl != lemma:
            continue
        groups = [g.split() for g in table.split("/")]
        for gender, fs in zip(GENDERS, groups[:3]):
            cases += [({"case": c, "declension": decl, "gender": gender, "number": "singular"}, f) for c, f in zip(CASES, fs)]
        cases += [({"case": c, "declension": decl, "number": "plural"}, f) for c, f in zip(CASES, groups[3])]
    docs.append(doc(lemma, "adjectives", cases))
w(T / "adjectives.paradigm.yaml", "---\n".join(docs))

EXPECTED_DET = {  # m / f / n / pl  (nom acc dat gen)
    "der": "der den dem des / die die der der / das das dem des / die die den der",
    "ein": "ein einen einem eines / eine eine einer einer / ein ein einem eines / -",
    "kein": "kein keinen keinem keines / keine keine keiner keiner / kein kein keinem keines / keine keine keinen keiner",
    "unser": "unser unseren unserem unseres / unsere unsere unserer unserer / unser unser unserem unseres / unsere unsere unseren unserer",
    "dieser": "dieser diesen diesem dieses / diese diese dieser dieser / dieses dieses diesem dieses / diese diese diesen dieser",
    "welcher": "welcher welchen welchem welches / welche welche welcher welcher / welches welches welchem welches / welche welche welchen welcher",
}
docs = []
for lemma, table in EXPECTED_DET.items():
    groups = [g.split() for g in table.split("/")]
    cases = []
    for gender, fs in zip(GENDERS, groups[:3]):
        cases += [({"case": c, "gender": gender, "number": "singular"}, f) for c, f in zip(CASES, fs)]
    if groups[3] != ["-"]:
        cases += [({"case": c, "number": "plural"}, f) for c, f in zip(CASES, groups[3])]
    docs.append(doc(lemma, "articles", cases))
w(T / "articles.paradigm.yaml", "---\n".join(docs))

EXPECTED_PRON = [
    ("ich", "singular", "ich mich mir meiner"), ("du", "singular", "du dich dir deiner"),
    ("er", "singular", "er ihn ihm seiner"), ("sie", "singular", "sie sie ihr ihrer"),
    ("es", "singular", "es es ihm seiner"), ("wir", "plural", "wir uns uns unser"),
    ("ihr", "plural", "ihr euch euch euer"), ("sie", "plural", "sie sie ihnen ihrer"),
    ("Sie", "plural", "Sie Sie Ihnen Ihrer"),
]
docs = [doc(l, "pronouns", [({"case": c, "number": nb}, f) for c, f in zip(CASES, fs.split())]) for l, nb, fs in EXPECTED_PRON]
w(T / "pronouns.paradigm.yaml", "---\n".join(docs))
print("de: rules and tests written")
