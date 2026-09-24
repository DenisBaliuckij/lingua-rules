"""Generate rules/en/{verbs,adjectives,pronouns}.lp and their golden tests.

The rule files are written from the tables below; the golden tests use forms
typed out separately (EXPECTED_*), not derived from the rule tables.
Run from the repository root: python tools/gen_en.py
"""

from pathlib import Path

R = Path("rules/en")
T = Path("tests/en")


def w(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8", newline="\n")


# ----------------------------------------------------------------------------- config
w(R / "lang.yaml", """name: English
iso639_3: eng
categories:
  - nouns
  - verbs
  - adjectives
  - pronouns
""")

w(R / "features.yaml", """dimensions:
  number:
    values: [singular, plural]
  verb_form:
    values: [base, present_3sg, past, past_participle, present_participle]
  degree:
    values: [positive, comparative, superlative]
  case:
    values: [subject, object, possessive_determiner, possessive_pronoun, reflexive]
""")

# ----------------------------------------------------------------------------- verbs
VERB_CLASSES = {
    "e_final": ["like", "love", "live", "use", "move", "change", "hope", "dance", "close", "arrive"],
    "y_final": ["study", "try", "cry", "carry", "worry", "marry", "hurry", "copy"],
    "sibilant": ["watch", "wash", "fix", "pass", "push", "miss", "finish", "touch"],
    "ie_final": ["die", "lie", "tie"],
}
DOUBLE_VERBS = {"stop": "p", "plan": "n", "drop": "p", "shop": "p", "admit": "t", "prefer": "r", "chat": "t", "rob": "b"}

IRREGULAR_VERBS = [  # base, present_3sg, past, past_participle, present_participle
    ("be", "is", "was", "been", "being"),
    ("have", "has", "had", "had", "having"),
    ("do", "does", "did", "done", "doing"),
    ("go", "goes", "went", "gone", "going"),
    ("say", "says", "said", "said", "saying"),
    ("make", "makes", "made", "made", "making"),
    ("take", "takes", "took", "taken", "taking"),
    ("come", "comes", "came", "come", "coming"),
    ("see", "sees", "saw", "seen", "seeing"),
    ("know", "knows", "knew", "known", "knowing"),
    ("get", "gets", "got", "got", "getting"),
    ("give", "gives", "gave", "given", "giving"),
    ("find", "finds", "found", "found", "finding"),
    ("think", "thinks", "thought", "thought", "thinking"),
    ("tell", "tells", "told", "told", "telling"),
    ("become", "becomes", "became", "become", "becoming"),
    ("leave", "leaves", "left", "left", "leaving"),
    ("feel", "feels", "felt", "felt", "feeling"),
    ("bring", "brings", "brought", "brought", "bringing"),
    ("begin", "begins", "began", "begun", "beginning"),
    ("keep", "keeps", "kept", "kept", "keeping"),
    ("write", "writes", "wrote", "written", "writing"),
    ("stand", "stands", "stood", "stood", "standing"),
    ("hear", "hears", "heard", "heard", "hearing"),
    ("meet", "meets", "met", "met", "meeting"),
    ("run", "runs", "ran", "run", "running"),
    ("pay", "pays", "paid", "paid", "paying"),
    ("sit", "sits", "sat", "sat", "sitting"),
    ("speak", "speaks", "spoke", "spoken", "speaking"),
    ("read", "reads", "read", "read", "reading"),
    ("grow", "grows", "grew", "grown", "growing"),
    ("lose", "loses", "lost", "lost", "losing"),
    ("fall", "falls", "fell", "fallen", "falling"),
    ("send", "sends", "sent", "sent", "sending"),
    ("build", "builds", "built", "built", "building"),
    ("understand", "understands", "understood", "understood", "understanding"),
    ("break", "breaks", "broke", "broken", "breaking"),
    ("spend", "spends", "spent", "spent", "spending"),
    ("cut", "cuts", "cut", "cut", "cutting"),
    ("drive", "drives", "drove", "driven", "driving"),
    ("buy", "buys", "bought", "bought", "buying"),
    ("choose", "chooses", "chose", "chosen", "choosing"),
    ("eat", "eats", "ate", "eaten", "eating"),
    ("drink", "drinks", "drank", "drunk", "drinking"),
    ("sing", "sings", "sang", "sung", "singing"),
    ("swim", "swims", "swam", "swum", "swimming"),
    ("fly", "flies", "flew", "flown", "flying"),
    ("forget", "forgets", "forgot", "forgotten", "forgetting"),
    ("sleep", "sleeps", "slept", "slept", "sleeping"),
    ("teach", "teaches", "taught", "taught", "teaching"),
    ("catch", "catches", "caught", "caught", "catching"),
    ("throw", "throws", "threw", "thrown", "throwing"),
    ("win", "wins", "won", "won", "winning"),
    ("sell", "sells", "sold", "sold", "selling"),
    ("put", "puts", "put", "put", "putting"),
    ("let", "lets", "let", "let", "letting"),
    ("set", "sets", "set", "set", "setting"),
    ("lead", "leads", "led", "led", "leading"),
]

v = ["""% rules/en/verbs.lp
% English verb forms: base, 3rd person singular present, past, past participle,
% present participle (feature: verb_form).
%
% Regular verbs need no entry: walk -> walks, walked, walked, walking.
% Verbs whose spelling changes are given a class with verb_class/2:
%   e_final   like  -> likes, liked, liking          (drop "e" before "-ing")
%   y_final   study -> studies, studied, studying    (consonant + "y")
%   sibilant  watch -> watches, watched, watching    ("-es" in the 3rd singular)
%   ie_final  die   -> dies, died, dying
% Verbs that double their final consonant are listed with
% double_consonant/2: stop -> stopped, stopping.
% Irregular verbs are marked irregular/1 and list all four non-base forms.
%
% Not covered: the forms of "be" by person (am, are, were), modal verbs, and
% British/American variants (only one form each, e.g. "got" not "gotten").

form(L, "verb_form=base", L) :- input_lemma(L).

has_class(L) :- verb_class(L, _).
has_class(L) :- double_consonant(L, _).
regular(L) :- input_lemma(L), not irregular(L), not has_class(L).

% --- regular -----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- regular(L).
form(L, "verb_form=past", @suffix(L, "ed")) :- regular(L).
form(L, "verb_form=past_participle", @suffix(L, "ed")) :- regular(L).
form(L, "verb_form=present_participle", @suffix(L, "ing")) :- regular(L).

% --- e_final -----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- input_lemma(L), verb_class(L, e_final).
form(L, "verb_form=past", @suffix(L, "d")) :- input_lemma(L), verb_class(L, e_final).
form(L, "verb_form=past_participle", @suffix(L, "d")) :- input_lemma(L), verb_class(L, e_final).
form(L, "verb_form=present_participle", @strip_suffix_add(L, 1, "ing")) :- input_lemma(L), verb_class(L, e_final).

% --- y_final -----------------------------------------------------------------
form(L, "verb_form=present_3sg", @strip_suffix_add(L, 1, "ies")) :- input_lemma(L), verb_class(L, y_final).
form(L, "verb_form=past", @strip_suffix_add(L, 1, "ied")) :- input_lemma(L), verb_class(L, y_final).
form(L, "verb_form=past_participle", @strip_suffix_add(L, 1, "ied")) :- input_lemma(L), verb_class(L, y_final).
form(L, "verb_form=present_participle", @suffix(L, "ing")) :- input_lemma(L), verb_class(L, y_final).

% --- sibilant ----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "es")) :- input_lemma(L), verb_class(L, sibilant).
form(L, "verb_form=past", @suffix(L, "ed")) :- input_lemma(L), verb_class(L, sibilant).
form(L, "verb_form=past_participle", @suffix(L, "ed")) :- input_lemma(L), verb_class(L, sibilant).
form(L, "verb_form=present_participle", @suffix(L, "ing")) :- input_lemma(L), verb_class(L, sibilant).

% --- ie_final ----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- input_lemma(L), verb_class(L, ie_final).
form(L, "verb_form=past", @suffix(L, "d")) :- input_lemma(L), verb_class(L, ie_final).
form(L, "verb_form=past_participle", @suffix(L, "d")) :- input_lemma(L), verb_class(L, ie_final).
form(L, "verb_form=present_participle", @strip_suffix_add(L, 2, "ying")) :- input_lemma(L), verb_class(L, ie_final).

% --- doubled final consonant -------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- input_lemma(L), double_consonant(L, _).
form(L, "verb_form=past", @suffix(S, "ed")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
form(L, "verb_form=past_participle", @suffix(S, "ed")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
form(L, "verb_form=present_participle", @suffix(S, "ing")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).

% --- class membership --------------------------------------------------------
"""]
for cls, lemmas in VERB_CLASSES.items():
    v.append(" ".join(f'verb_class("{l}", {cls}).' for l in lemmas) + "\n")
v.append(" ".join(f'double_consonant("{l}", "{c}").' for l, c in DOUBLE_VERBS.items()) + "\n")
v.append("\n% --- irregular verbs ---------------------------------------------------------\n")
for base, s3, past, pp, ing in IRREGULAR_VERBS:
    v.append(
        f'irregular("{base}"). '
        f'form("{base}", "verb_form=present_3sg", "{s3}"). form("{base}", "verb_form=past", "{past}").\n'
        f'  form("{base}", "verb_form=past_participle", "{pp}"). form("{base}", "verb_form=present_participle", "{ing}").\n'
    )
w(R / "verbs.lp", "".join(v))

# ----------------------------------------------------------------------------- adjectives
ADJ_CLASSES = {
    "e_final": ["large", "nice", "late", "wide", "safe", "simple", "close", "strange"],
    "y_final": ["happy", "easy", "busy", "early", "heavy", "pretty", "funny", "angry"],
    "periphrastic": ["beautiful", "important", "interesting", "expensive", "difficult", "careful", "modern", "famous"],
}
DOUBLE_ADJ = {"big": "g", "hot": "t", "thin": "n", "sad": "d", "fat": "t", "wet": "t", "red": "d"}
IRREGULAR_ADJ = [
    ("good", "better", "best"), ("bad", "worse", "worst"), ("far", "farther", "farthest"),
    ("little", "less", "least"), ("many", "more", "most"), ("much", "more", "most"),
]

a = ["""% rules/en/adjectives.lp
% English adjective comparison (feature: degree).
%
% Regular adjectives need no entry: tall -> taller, tallest.
% Adjectives whose spelling changes, or that compare with "more"/"most", are
% given a class with adj_class/2:
%   e_final       large     -> larger, largest
%   y_final       happy     -> happier, happiest
%   periphrastic  beautiful -> more beautiful, most beautiful
% Adjectives that double their final consonant: big -> bigger, biggest
% (double_consonant/2). Irregular comparison is listed explicitly.

form(L, "degree=positive", L) :- input_lemma(L).

has_class(L) :- adj_class(L, _).
has_class(L) :- double_consonant(L, _).
regular(L) :- input_lemma(L), not irregular(L), not has_class(L).

form(L, "degree=comparative", @suffix(L, "er")) :- regular(L).
form(L, "degree=superlative", @suffix(L, "est")) :- regular(L).

form(L, "degree=comparative", @suffix(L, "r")) :- input_lemma(L), adj_class(L, e_final).
form(L, "degree=superlative", @suffix(L, "st")) :- input_lemma(L), adj_class(L, e_final).

form(L, "degree=comparative", @strip_suffix_add(L, 1, "ier")) :- input_lemma(L), adj_class(L, y_final).
form(L, "degree=superlative", @strip_suffix_add(L, 1, "iest")) :- input_lemma(L), adj_class(L, y_final).

form(L, "degree=comparative", @prefix(L, "more ")) :- input_lemma(L), adj_class(L, periphrastic).
form(L, "degree=superlative", @prefix(L, "most ")) :- input_lemma(L), adj_class(L, periphrastic).

form(L, "degree=comparative", @suffix(S, "er")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
form(L, "degree=superlative", @suffix(S, "est")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).

"""]
for cls, lemmas in ADJ_CLASSES.items():
    a.append(" ".join(f'adj_class("{l}", {cls}).' for l in lemmas) + "\n")
a.append(" ".join(f'double_consonant("{l}", "{c}").' for l, c in DOUBLE_ADJ.items()) + "\n\n")
for pos, comp, sup in IRREGULAR_ADJ:
    a.append(f'irregular("{pos}"). form("{pos}", "degree=comparative", "{comp}"). form("{pos}", "degree=superlative", "{sup}").\n')
w(R / "adjectives.lp", "".join(a))

# ----------------------------------------------------------------------------- pronouns
PRONOUNS = [  # lemma, number, subject, object, poss. determiner, poss. pronoun, reflexive
    ("I", "singular", "I", "me", "my", "mine", "myself"),
    ("you", "singular", "you", "you", "your", "yours", "yourself"),
    ("you", "plural", "you", "you", "your", "yours", "yourselves"),
    ("he", "singular", "he", "him", "his", "his", "himself"),
    ("she", "singular", "she", "her", "her", "hers", "herself"),
    ("it", "singular", "it", "it", "its", "its", "itself"),
    ("we", "plural", "we", "us", "our", "ours", "ourselves"),
    ("they", "plural", "they", "them", "their", "theirs", "themselves"),
]
CASES = ["subject", "object", "possessive_determiner", "possessive_pronoun", "reflexive"]
p = ["""% rules/en/pronouns.lp
% English personal pronouns (features: case, number). The lemma is the subject
% form; "you" has both a singular and a plural paradigm (yourself/yourselves).
% Every form is listed; there are no general rules.

"""]
for lemma, number, *forms in PRONOUNS:
    p.append(f"% {lemma} ({number})\n")
    for case, f in zip(CASES, forms):
        p.append(f'form("{lemma}", "case={case};number={number}", "{f}").\n')
w(R / "pronouns.lp", "".join(p))

# ----------------------------------------------------------------------------- golden tests
EXPECTED_VERBS = {  # typed out by hand: 3sg, past, past participle, -ing
    "walk": "walks walked walked walking",
    "play": "plays played played playing",
    "like": "likes liked liked liking",
    "arrive": "arrives arrived arrived arriving",
    "study": "studies studied studied studying",
    "carry": "carries carried carried carrying",
    "watch": "watches watched watched watching",
    "fix": "fixes fixed fixed fixing",
    "die": "dies died died dying",
    "stop": "stops stopped stopped stopping",
    "prefer": "prefers preferred preferred preferring",
    "be": "is was been being",
    "go": "goes went gone going",
    "have": "has had had having",
    "do": "does did done doing",
    "write": "writes wrote written writing",
    "swim": "swims swam swum swimming",
    "fly": "flies flew flown flying",
    "teach": "teaches taught taught teaching",
    "cut": "cuts cut cut cutting",
    "lead": "leads led led leading",
}
EXPECTED_ADJ = {
    "tall": "taller tallest", "cold": "colder coldest", "large": "larger largest",
    "simple": "simpler simplest", "happy": "happier happiest", "early": "earlier earliest",
    "big": "bigger biggest", "hot": "hotter hottest", "beautiful": "more beautiful most beautiful",
    "difficult": "more difficult most difficult", "good": "better best", "bad": "worse worst",
    "far": "farther farthest", "little": "less least",
}



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


docs = []
for lemma, forms in EXPECTED_VERBS.items():
    s3, past, pp, ing = forms.split()
    docs.append(doc(lemma, "verbs", [({"verb_form": "base"}, lemma), ({"verb_form": "present_3sg"}, s3),
                                     ({"verb_form": "past"}, past), ({"verb_form": "past_participle"}, pp),
                                     ({"verb_form": "present_participle"}, ing)]))
w(T / "verbs.paradigm.yaml", "---\n".join(docs))

docs = []
for lemma, forms in EXPECTED_ADJ.items():
    words = forms.split()
    comp, sup = (" ".join(words[:2]), " ".join(words[2:])) if len(words) == 4 else words
    docs.append(doc(lemma, "adjectives", [({"degree": "positive"}, lemma), ({"degree": "comparative"}, comp),
                                          ({"degree": "superlative"}, sup)]))
w(T / "adjectives.paradigm.yaml", "---\n".join(docs))

EXPECTED_PRON = {
    ("I", "singular"): "I me my mine myself",
    ("you", "singular"): "you you your yours yourself",
    ("you", "plural"): "you you your yours yourselves",
    ("he", "singular"): "he him his his himself",
    ("she", "singular"): "she her her hers herself",
    ("it", "singular"): "it it its its itself",
    ("we", "plural"): "we us our ours ourselves",
    ("they", "plural"): "they them their theirs themselves",
}
docs = []
for (lemma, number), forms in EXPECTED_PRON.items():
    docs.append(doc(lemma, "pronouns", [({"case": c, "number": number}, f) for c, f in zip(CASES, forms.split())]))
w(T / "pronouns.paradigm.yaml", "---\n".join(docs))
print("en: rules and tests written")
