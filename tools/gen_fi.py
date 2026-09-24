"""Generate rules/fi/*.lp and their golden tests.

The rule files are written from the class/ending tables below; the golden
tests use full word forms typed out separately (EXPECTED_*).
Run from the repository root: python tools/gen_fi.py
"""

from pathlib import Path

R = Path("rules/fi")
T = Path("tests/fi")
CASES = ["nominative", "genitive", "partitive", "inessive", "elative", "illative",
         "adessive", "ablative", "allative", "essive", "translative"]
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


def spec(s: str):
    """'2:en' -> (2, 'en'); 'en' -> (0, 'en'); '-' -> (0, '')."""
    if s == "-":
        return 0, ""
    if ":" in s:
        n, e = s.split(":", 1)
        return int(n), e
    return 0, s


w(R / "lang.yaml", """name: Finnish
iso639_3: fin
categories:
  - nouns
  - verbs
  - adjectives
  - pronouns
""")

w(R / "features.yaml", """dimensions:
  case:
    values: [nominative, genitive, partitive, accusative, inessive, elative, illative, adessive, ablative, allative, essive, translative]
  number:
    values: [singular, plural]
  person:
    values: [first, second, third]
  verb_form:
    values: [infinitive, present, past, imperative]
  degree:
    values: [positive, comparative, superlative]
""")

# ============================================================================= nouns
# Each class: 11 singular and 11 plural endings in CASES order, as "strip:ending"
# ("-" = the lemma itself, "ending" = strip nothing).
NOUN_CLASSES = {
    "back_o": ("- n a ssa sta on lla lta lle na ksi",
               "t jen ja issa ista ihin illa ilta ille ina iksi"),
    "back_u": ("- n a ssa sta un lla lta lle na ksi",
               "t jen ja issa ista ihin illa ilta ille ina iksi"),
    "front_y": ("- n ä ssä stä yn llä ltä lle nä ksi",
                "t jen jä issä istä ihin illä iltä ille inä iksi"),
    "front_ae": ("- n ä ssä stä än llä ltä lle nä ksi",
                 "t 1:ien 1:iä 1:issä 1:istä 1:iin 1:illä 1:iltä 1:ille 1:inä 1:iksi"),
    "back_a_o": ("- n a ssa sta an lla lta lle na ksi",
                 "t 1:ojen 1:oja 1:oissa 1:oista 1:oihin 1:oilla 1:oilta 1:oille 1:oina 1:oiksi"),
    "back_a_i": ("- n a ssa sta an lla lta lle na ksi",
                 "t 1:ien 1:ia 1:issa 1:ista 1:iin 1:illa 1:ilta 1:ille 1:ina 1:iksi"),
    "long_back_a": ("- n ta ssa sta han lla lta lle na ksi",
                    "t 1:iden 1:ita 1:issa 1:ista 1:ihin 1:illa 1:ilta 1:ille 1:ina 1:iksi"),
    "long_back_u": ("- n ta ssa sta hun lla lta lle na ksi",
                    "t 1:iden 1:ita 1:issa 1:ista 1:ihin 1:illa 1:ilta 1:ille 1:ina 1:iksi"),
    "long_front_ae": ("- n tä ssä stä hän llä ltä lle nä ksi",
                      "t 1:iden 1:itä 1:issä 1:istä 1:ihin 1:illä 1:iltä 1:ille 1:inä 1:iksi"),
    "nen_back": ("- 3:sen 3:sta 3:sessa 3:sesta 3:seen 3:sella 3:selta 3:selle 3:sena 3:seksi",
                 "3:set 3:sten 3:sia 3:sissa 3:sista 3:siin 3:silla 3:silta 3:sille 3:sina 3:siksi"),
    "nen_front": ("- 3:sen 3:stä 3:sessä 3:sestä 3:seen 3:sellä 3:seltä 3:selle 3:senä 3:seksi",
                  "3:set 3:sten 3:siä 3:sissä 3:sistä 3:siin 3:sillä 3:siltä 3:sille 3:sinä 3:siksi"),
    "e_stem_back": ("- 1:en 1:ea 1:essa 1:esta 1:een 1:ella 1:elta 1:elle 1:ena 1:eksi",
                    "1:et 1:ien 1:ia 1:issa 1:ista 1:iin 1:illa 1:ilta 1:ille 1:ina 1:iksi"),
    "e_stem_front": ("- 1:en 1:eä 1:essä 1:estä 1:een 1:ellä 1:eltä 1:elle 1:enä 1:eksi",
                     "1:et 1:ien 1:iä 1:issä 1:istä 1:iin 1:illä 1:iltä 1:ille 1:inä 1:iksi"),
    "i_loan_back": ("- n a ssa sta in lla lta lle na ksi",
                    "t 1:ien 1:eja 1:eissa 1:eista 1:eihin 1:eilla 1:eilta 1:eille 1:eina 1:eiksi"),
    "i_loan_front": ("- n ä ssä stä in llä ltä lle nä ksi",
                     "t 1:ien 1:ejä 1:eissä 1:eistä 1:eihin 1:eillä 1:eiltä 1:eille 1:einä 1:eiksi"),
}
NOUN_MEMBERS = {
    "back_o": ["talo", "auto", "kello"],
    "back_u": ["aamu", "laulu"],
    "front_y": ["pöly", "hylly"],
    "front_ae": ["kynä", "päivä", "kylä"],
    "back_a_o": ["kala", "sana", "kirja"],
    "back_a_i": ["koira", "kuva", "muna"],
    "long_back_a": ["maa"],
    "long_back_u": ["puu", "kuu"],
    "long_front_ae": ["pää", "jää"],
    "nen_back": ["nainen", "hevonen"],
    "nen_front": ["ihminen"],
    "e_stem_back": ["ovi"],
    "e_stem_front": ["kivi", "nimi", "pilvi"],
    "i_loan_back": ["bussi", "kahvi"],
    "i_loan_front": ["keksi", "hissi"],
}
IRREGULAR_NOUNS = {  # singular (11) | plural (11)
    "vesi": "vesi veden vettä vedessä vedestä veteen vedellä vedeltä vedelle vetenä vedeksi | vedet vesien vesiä vesissä vesistä vesiin vesillä vesiltä vesille vesinä vesiksi",
    "käsi": "käsi käden kättä kädessä kädestä käteen kädellä kädeltä kädelle kätenä kädeksi | kädet käsien käsiä käsissä käsistä käsiin käsillä käsiltä käsille käsinä käsiksi",
    "mies": "mies miehen miestä miehessä miehestä mieheen miehellä mieheltä miehelle miehenä mieheksi | miehet miesten miehiä miehissä miehistä miehiin miehillä miehiltä miehille miehinä miehiksi",
    "lapsi": "lapsi lapsen lasta lapsessa lapsesta lapseen lapsella lapselta lapselle lapsena lapseksi | lapset lasten lapsia lapsissa lapsista lapsiin lapsilla lapsilta lapsille lapsina lapsiksi",
    "katu": "katu kadun katua kadussa kadusta katuun kadulla kadulta kadulle katuna kaduksi | kadut katujen katuja kaduissa kaduista katuihin kaduilla kaduilta kaduille katuina kaduiksi",
    "kauppa": "kauppa kaupan kauppaa kaupassa kaupasta kauppaan kaupalla kaupalta kaupalle kauppana kaupaksi | kaupat kauppojen kauppoja kaupoissa kaupoista kauppoihin kaupoilla kaupoilta kaupoille kauppoina kaupoiksi",
    "poika": "poika pojan poikaa pojassa pojasta poikaan pojalla pojalta pojalle poikana pojaksi | pojat poikien poikia pojissa pojista poikiin pojilla pojilta pojille poikina pojiksi",
    "tyttö": "tyttö tytön tyttöä tytössä tytöstä tyttöön tytöllä tytöltä tytölle tyttönä tytöksi | tytöt tyttöjen tyttöjä tytöissä tytöistä tyttöihin tytöillä tytöiltä tytöille tyttöinä tytöiksi",
}

n = ["""% rules/fi/nouns.lp
% Finnish noun inflection: 12 cases x 2 numbers (features: case, number).
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned an
% inflection class with noun_class/2; a lemma without a class produces no
% forms. Classes (genitive sg, partitive sg, illative sg / partitive pl):
%   back_o        talo    -> talon, taloa, taloon / taloja
%   back_u        aamu    -> aamun, aamua, aamuun / aamuja
%   front_y       pöly    -> pölyn, pölyä, pölyyn / pölyjä
%   front_ae      kynä    -> kynän, kynää, kynään / kyniä       (ä -> i)
%   back_a_o      kala    -> kalan, kalaa, kalaan / kaloja      (a -> o)
%   back_a_i      koira   -> koiran, koiraa, koiraan / koiria   (a -> i)
%   long_back_a   maa     -> maan, maata, maahan / maita
%   long_back_u   puu     -> puun, puuta, puuhun / puita
%   long_front_ae pää     -> pään, päätä, päähän / päitä
%   nen_back      nainen  -> naisen, naista, naiseen / naisia
%   nen_front     ihminen -> ihmisen, ihmistä, ihmiseen / ihmisiä
%   e_stem_back   ovi     -> oven, ovea, oveen / ovia
%   e_stem_front  kivi    -> kiven, kiveä, kiveen / kiviä
%   i_loan_back   bussi   -> bussin, bussia, bussiin / busseja
%   i_loan_front  keksi   -> keksin, keksiä, keksiin / keksejä
% None of these classes has consonant gradation; nouns with gradation or other
% stem changes (katu/kadun, käsi/käden, mies/miehen) are listed as irregular.
% The accusative equals the genitive in the singular and the nominative in the
% plural (for every noun, including irregular ones).
%
% Not covered: comitative, abessive and instructive; possessive suffixes;
% clitics; consonant gradation as a rule.

"""]
for cls, (sg, pl) in NOUN_CLASSES.items():
    n.append(f"% --- {cls}\n")
    for number, ends in (("singular", sg.split()), ("plural", pl.split())):
        assert len(ends) == 11, (cls, number)
        for case, e in zip(CASES, ends):
            strip, end = spec(e)
            n.append(f'form(L, "case={case};number={number}", {head(strip, end)}) :- input_lemma(L), noun_class(L, {cls}).\n')
    n.append("\n")
n.append("""% --- accusative (all nouns)
form(L, "case=accusative;number=singular", F) :- input_lemma(L), form(L, "case=genitive;number=singular", F).
form(L, "case=accusative;number=plural", F) :- input_lemma(L), form(L, "case=nominative;number=plural", F).

% --- class membership
""")
n.append(facts("noun_class", NOUN_MEMBERS))
n.append("\n% --- irregular nouns (all forms except the accusative listed)\n")
for lemma, forms in IRREGULAR_NOUNS.items():
    sg, pl = (p.split() for p in forms.split("|"))
    n.append(f'irregular("{lemma}").\n')
    for number, fs in (("singular", sg), ("plural", pl)):
        n.append(" ".join(f'form("{lemma}", "case={c};number={number}", "{f}").' for c, f in zip(CASES, fs)) + "\n")
w(R / "nouns.lp", "".join(n))

# ============================================================================= verbs
# class: present (6), past (6), imperative (sg, pl) as "strip:ending" on the infinitive
VERB_CLASSES = {
    "t1_u": ("1:n 1:t 1:u 1:mme 1:tte 1:vat", "1:in 1:it 1:i 1:imme 1:itte 1:ivat", "1: 1:kaa"),
    "t1_o": ("1:n 1:t 1:o 1:mme 1:tte 1:vat", "1:in 1:it 1:i 1:imme 1:itte 1:ivat", "1: 1:kaa"),
    "t1_y": ("1:n 1:t 1:y 1:mme 1:tte 1:vät", "1:in 1:it 1:i 1:imme 1:itte 1:ivät", "1: 1:kää"),
    "t1_i_back": ("1:n 1:t 1:i 1:mme 1:tte 1:vat", "1:n 1:t 1: 1:mme 1:tte 1:vat", "1: 1:kaa"),
    "t1_i_front": ("1:n 1:t 1:i 1:mme 1:tte 1:vät", "1:n 1:t 1: 1:mme 1:tte 1:vät", "1: 1:kää"),
    "t1_aa_i": ("1:n 1:t 1:a 1:mme 1:tte 1:vat", "2:in 2:it 2:i 2:imme 2:itte 2:ivat", "1: 1:kaa"),
    "t1_aa_oi": ("1:n 1:t 1:a 1:mme 1:tte 1:vat", "2:oin 2:oit 2:oi 2:oimme 2:oitte 2:oivat", "1: 1:kaa"),
    "t3_back": ("2:en 2:et 2:ee 2:emme 2:ette 2:evat", "2:in 2:it 2:i 2:imme 2:itte 2:ivat", "2:e 2:kaa"),
    "t3_front": ("2:en 2:et 2:ee 2:emme 2:ette 2:evät", "2:in 2:it 2:i 2:imme 2:itte 2:ivät", "2:e 2:kää"),
    "t4_back": ("2:an 2:at 2:aa 2:amme 2:atte 2:avat", "2:sin 2:sit 2:si 2:simme 2:sitte 2:sivat", "2:a 1:kaa"),
    "t5_back": ("1:sen 1:set 1:see 1:semme 1:sette 1:sevat", "1:sin 1:sit 1:si 1:simme 1:sitte 1:sivat", "1:se 1:kaa"),
    "t5_front": ("1:sen 1:set 1:see 1:semme 1:sette 1:sevät", "1:sin 1:sit 1:si 1:simme 1:sitte 1:sivät", "1:se 1:kää"),
}
VERB_MEMBERS = {
    "t1_u": ["puhua", "asua", "istua"], "t1_o": ["sanoa"], "t1_y": ["kysyä", "pysyä"],
    "t1_i_back": ["sallia"], "t1_i_front": ["etsiä"],
    "t1_aa_i": ["ostaa", "muistaa"], "t1_aa_oi": ["maksaa", "laulaa"],
    "t3_back": ["tulla", "opiskella", "purra"], "t3_front": ["mennä", "kävellä"],
    "t4_back": ["haluta", "siivota"], "t5_back": ["tarvita", "valita"], "t5_front": ["häiritä", "merkitä"],
}
IRREGULAR_VERBS = {  # present (6) | past (6) | imperative sg pl (or -)
    "olla": "olen olet on olemme olette ovat | olin olit oli olimme olitte olivat | ole olkaa",
    "syödä": "syön syöt syö syömme syötte syövät | söin söit söi söimme söitte söivät | syö syökää",
    "juoda": "juon juot juo juomme juotte juovat | join joit joi joimme joitte joivat | juo juokaa",
    "saada": "saan saat saa saamme saatte saavat | sain sait sai saimme saitte saivat | saa saakaa",
    "voida": "voin voit voi voimme voitte voivat | voin voit voi voimme voitte voivat | -",
    "viedä": "vien viet vie viemme viette vievät | vein veit vei veimme veitte veivät | vie viekää",
    "tehdä": "teen teet tekee teemme teette tekevät | tein teit teki teimme teitte tekivät | tee tehkää",
    "nähdä": "näen näet näkee näemme näette näkevät | näin näit näki näimme näitte näkivät | näe nähkää",
    "tietää": "tiedän tiedät tietää tiedämme tiedätte tietävät | tiesin tiesit tiesi tiesimme tiesitte tiesivät | tiedä tietäkää",
    "ottaa": "otan otat ottaa otamme otatte ottavat | otin otit otti otimme otitte ottivat | ota ottakaa",
    "antaa": "annan annat antaa annamme annatte antavat | annoin annoit antoi annoimme annoitte antoivat | anna antakaa",
    "lukea": "luen luet lukee luemme luette lukevat | luin luit luki luimme luitte lukivat | lue lukekaa",
    "kirjoittaa": "kirjoitan kirjoitat kirjoittaa kirjoitamme kirjoitatte kirjoittavat | kirjoitin kirjoitit kirjoitti kirjoitimme kirjoititte kirjoittivat | kirjoita kirjoittakaa",
    "ymmärtää": "ymmärrän ymmärrät ymmärtää ymmärrämme ymmärrätte ymmärtävät | ymmärsin ymmärsit ymmärsi ymmärsimme ymmärsitte ymmärsivät | ymmärrä ymmärtäkää",
    "nukkua": "nukun nukut nukkuu nukumme nukutte nukkuvat | nukuin nukuit nukkui nukuimme nukuitte nukkuivat | nuku nukkukaa",
}


def pkey(person, number, vf):
    return f"number={number};person={person};verb_form={vf}"


v = ["""% rules/fi/verbs.lp
% Finnish verbs (features: verb_form, person, number): infinitive, present,
% past (imperfect), imperative (2nd person singular and plural).
% Classes (verb_class/2), named after the traditional verb types:
%   t1_u / t1_o / t1_y  puhua -> puhun ... puhuu; puhuin; puhu, puhukaa
%   t1_i_back/_front    etsiä -> etsin ... etsii; etsin (past = present stem)
%   t1_aa_i             ostaa -> ostan ... ostaa; ostin
%   t1_aa_oi            maksaa -> maksan ... maksaa; maksoin
%   t3_back / t3_front  tulla -> tulen ... tulee; tulin; tule, tulkaa
%   t4_back             haluta -> haluan ... haluaa; halusin; halua, halutkaa
%   t5_back / t5_front  tarvita -> tarvitsen ... tarvitsee; tarvitsin; tarvitse, tarvitkaa
% "_back"/"_front" follow vowel harmony. None of these classes has consonant
% gradation; type 2 verbs (syödä, juoda, tehdä ...) and verbs with gradation
% (ottaa -> otan, lukea -> luen) are listed as irregular.
%
% Not covered: negative forms (en puhu), passive, conditional and potential
% moods, perfect tenses, participles and infinitives other than the first.

form(L, "verb_form=infinitive", L) :- input_lemma(L).

"""]
for cls, (pres, past, imp) in VERB_CLASSES.items():
    v.append(f"% --- {cls}\n")
    for tense, ends in (("present", pres.split()), ("past", past.split())):
        for (person, number), e in zip(PERSONS, ends):
            strip, end = spec(e)
            v.append(f'form(L, "{pkey(person, number, tense)}", {head(strip, end)}) :- input_lemma(L), verb_class(L, {cls}).\n')
    for number, e in zip(("singular", "plural"), imp.split()):
        strip, end = spec(e)
        v.append(f'form(L, "number={number};verb_form=imperative", {head(strip, end)}) :- input_lemma(L), verb_class(L, {cls}).\n')
    v.append("\n")
v.append("% --- class membership\n" + facts("verb_class", VERB_MEMBERS))
v.append("\n% --- irregular verbs (all forms listed)\n")
for lemma, forms in IRREGULAR_VERBS.items():
    pres, past, imp = (p.split() for p in forms.split("|"))
    v.append(f'irregular("{lemma}").\n')
    for tense, fs in (("present", pres), ("past", past)):
        v.append(" ".join(f'form("{lemma}", "{pkey(p, nb, tense)}", "{f}").' for (p, nb), f in zip(PERSONS, fs)) + "\n")
    if imp != ["-"]:
        v.append(f'form("{lemma}", "number=singular;verb_form=imperative", "{imp[0]}"). form("{lemma}", "number=plural;verb_form=imperative", "{imp[1]}").\n')
w(R / "verbs.lp", "".join(v))

# ============================================================================= adjectives
ADJ_CLASSES = {  # comparative, superlative
    "o_u": ("mpi", "in"), "a_ae": ("1:empi", "1:in"), "nen": ("3:sempi", "3:sin"), "long": ("mpi", "1:in"),
}
ADJ_MEMBERS = {
    "o_u": ["iso", "hullu", "paksu"], "a_ae": ["vanha", "kova", "ruma", "kylmä", "tyhmä"],
    "nen": ["sininen", "iloinen"], "long": ["vapaa"],
}
IRREGULAR_ADJ = {
    "hyvä": ("parempi", "paras"), "pitkä": ("pidempi", "pisin"), "uusi": ("uudempi", "uusin"),
    "pieni": ("pienempi", "pienin"), "suuri": ("suurempi", "suurin"), "nuori": ("nuorempi", "nuorin"),
    "kaunis": ("kauniimpi", "kaunein"), "lyhyt": ("lyhyempi", "lyhyin"), "kallis": ("kalliimpi", "kallein"), "helppo": ("helpompi", "helpoin"),
}
a = ["""% rules/fi/adjectives.lp
% Finnish adjective comparison (feature: degree). Classes (adj_class/2):
%   o_u   iso     -> isompi, isoin        (lemma + -mpi / -in)
%   a_ae  vanha   -> vanhempi, vanhin     (final a/ä -> -empi / -in)
%   nen   sininen -> sinisempi, sinisin
%   long  vapaa   -> vapaampi, vapain
% Irregular comparison is listed (hyvä -> parempi, paras).
%
% Adjectives with consonant gradation (helppo -> helpompi) are listed too.
%
% Not covered: case inflection of adjectives (they inflect like nouns; see
% nouns.lp).

form(L, "degree=positive", L) :- input_lemma(L).

"""]
for cls, (comp, sup) in ADJ_CLASSES.items():
    for key, e in (("comparative", comp), ("superlative", sup)):
        strip, end = spec(e)
        a.append(f'form(L, "degree={key}", {head(strip, end)}) :- input_lemma(L), adj_class(L, {cls}).\n')
a.append("\n" + facts("adj_class", ADJ_MEMBERS) + "\n")
for lemma, (comp, sup) in IRREGULAR_ADJ.items():
    a.append(f'irregular("{lemma}"). form("{lemma}", "degree=comparative", "{comp}"). form("{lemma}", "degree=superlative", "{sup}").\n')
w(R / "adjectives.lp", "".join(a))

# ============================================================================= pronouns
PRON_CASES = CASES[:3] + ["accusative"] + CASES[3:]
PRON = [
    ("minä", "singular", "minä minun minua minut minussa minusta minuun minulla minulta minulle minuna minuksi"),
    ("sinä", "singular", "sinä sinun sinua sinut sinussa sinusta sinuun sinulla sinulta sinulle sinuna sinuksi"),
    ("hän", "singular", "hän hänen häntä hänet hänessä hänestä häneen hänellä häneltä hänelle hänenä häneksi"),
    ("me", "plural", "me meidän meitä meidät meissä meistä meihin meillä meiltä meille meinä meiksi"),
    ("te", "plural", "te teidän teitä teidät teissä teistä teihin teillä teiltä teille teinä teiksi"),
    ("he", "plural", "he heidän heitä heidät heissä heistä heihin heillä heiltä heille heinä heiksi"),
]
pr = ["""% rules/fi/pronouns.lp
% Finnish personal pronouns (features: case, number); personal pronouns have a
% distinct accusative (minut, hänet). Every form is listed.

"""]
for lemma, number, forms in PRON:
    pr.append(" ".join(f'form("{lemma}", "case={c};number={number}", "{f}").' for c, f in zip(PRON_CASES, forms.split())) + "\n")
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


EXPECTED_NOUNS = {  # 11 cases sg | 11 cases pl  (accusative checked separately)
    "talo": "talo talon taloa talossa talosta taloon talolla talolta talolle talona taloksi | talot talojen taloja taloissa taloista taloihin taloilla taloilta taloille taloina taloiksi",
    "aamu": "aamu aamun aamua aamussa aamusta aamuun aamulla aamulta aamulle aamuna aamuksi | aamut aamujen aamuja aamuissa aamuista aamuihin aamuilla aamuilta aamuille aamuina aamuiksi",
    "pöly": "pöly pölyn pölyä pölyssä pölystä pölyyn pölyllä pölyltä pölylle pölynä pölyksi | pölyt pölyjen pölyjä pölyissä pölyistä pölyihin pölyillä pölyiltä pölyille pölyinä pölyiksi",
    "kynä": "kynä kynän kynää kynässä kynästä kynään kynällä kynältä kynälle kynänä kynäksi | kynät kynien kyniä kynissä kynistä kyniin kynillä kyniltä kynille kyninä kyniksi",
    "kala": "kala kalan kalaa kalassa kalasta kalaan kalalla kalalta kalalle kalana kalaksi | kalat kalojen kaloja kaloissa kaloista kaloihin kaloilla kaloilta kaloille kaloina kaloiksi",
    "koira": "koira koiran koiraa koirassa koirasta koiraan koiralla koiralta koiralle koirana koiraksi | koirat koirien koiria koirissa koirista koiriin koirilla koirilta koirille koirina koiriksi",
    "maa": "maa maan maata maassa maasta maahan maalla maalta maalle maana maaksi | maat maiden maita maissa maista maihin mailla mailta maille maina maiksi",
    "puu": "puu puun puuta puussa puusta puuhun puulla puulta puulle puuna puuksi | puut puiden puita puissa puista puihin puilla puilta puille puina puiksi",
    "pää": "pää pään päätä päässä päästä päähän päällä päältä päälle päänä pääksi | päät päiden päitä päissä päistä päihin päillä päiltä päille päinä päiksi",
    "nainen": "nainen naisen naista naisessa naisesta naiseen naisella naiselta naiselle naisena naiseksi | naiset naisten naisia naisissa naisista naisiin naisilla naisilta naisille naisina naisiksi",
    "ihminen": "ihminen ihmisen ihmistä ihmisessä ihmisestä ihmiseen ihmisellä ihmiseltä ihmiselle ihmisenä ihmiseksi | ihmiset ihmisten ihmisiä ihmisissä ihmisistä ihmisiin ihmisillä ihmisiltä ihmisille ihmisinä ihmisiksi",
    "ovi": "ovi oven ovea ovessa ovesta oveen ovella ovelta ovelle ovena oveksi | ovet ovien ovia ovissa ovista oviin ovilla ovilta oville ovina oviksi",
    "kivi": "kivi kiven kiveä kivessä kivestä kiveen kivellä kiveltä kivelle kivenä kiveksi | kivet kivien kiviä kivissä kivistä kiviin kivillä kiviltä kiville kivinä kiviksi",
    "bussi": "bussi bussin bussia bussissa bussista bussiin bussilla bussilta bussille bussina bussiksi | bussit bussien busseja busseissa busseista busseihin busseilla busseilta busseille busseina busseiksi",
    "keksi": "keksi keksin keksiä keksissä keksistä keksiin keksillä keksiltä keksille keksinä keksiksi | keksit keksien keksejä kekseissä kekseistä kekseihin kekseillä kekseiltä kekseille kekseinä kekseiksi",
    "vesi": "vesi veden vettä vedessä vedestä veteen vedellä vedeltä vedelle vetenä vedeksi | vedet vesien vesiä vesissä vesistä vesiin vesillä vesiltä vesille vesinä vesiksi",
    "mies": "mies miehen miestä miehessä miehestä mieheen miehellä mieheltä miehelle miehenä mieheksi | miehet miesten miehiä miehissä miehistä miehiin miehillä miehiltä miehille miehinä miehiksi",
    "lapsi": "lapsi lapsen lasta lapsessa lapsesta lapseen lapsella lapselta lapselle lapsena lapseksi | lapset lasten lapsia lapsissa lapsista lapsiin lapsilla lapsilta lapsille lapsina lapsiksi",
    "katu": "katu kadun katua kadussa kadusta katuun kadulla kadulta kadulle katuna kaduksi | kadut katujen katuja kaduissa kaduista katuihin kaduilla kaduilta kaduille katuina kaduiksi",
    "poika": "poika pojan poikaa pojassa pojasta poikaan pojalla pojalta pojalle poikana pojaksi | pojat poikien poikia pojissa pojista poikiin pojilla pojilta pojille poikina pojiksi",
}
docs = []
for lemma, forms in EXPECTED_NOUNS.items():
    sg, pl = (p.split() for p in forms.split("|"))
    cases = [({"case": c, "number": "singular"}, f) for c, f in zip(CASES, sg)]
    cases += [({"case": c, "number": "plural"}, f) for c, f in zip(CASES, pl)]
    cases += [({"case": "accusative", "number": "singular"}, sg[1]), ({"case": "accusative", "number": "plural"}, pl[0])]
    docs.append(doc(lemma, "nouns", cases))
w(T / "nouns.paradigm.yaml", "---\n".join(docs))

EXPECTED_VERBS = {  # present (6) | past (6) | imperative sg pl
    "puhua": "puhun puhut puhuu puhumme puhutte puhuvat | puhuin puhuit puhui puhuimme puhuitte puhuivat | puhu puhukaa",
    "sanoa": "sanon sanot sanoo sanomme sanotte sanovat | sanoin sanoit sanoi sanoimme sanoitte sanoivat | sano sanokaa",
    "kysyä": "kysyn kysyt kysyy kysymme kysytte kysyvät | kysyin kysyit kysyi kysyimme kysyitte kysyivät | kysy kysykää",
    "etsiä": "etsin etsit etsii etsimme etsitte etsivät | etsin etsit etsi etsimme etsitte etsivät | etsi etsikää",
    "ostaa": "ostan ostat ostaa ostamme ostatte ostavat | ostin ostit osti ostimme ostitte ostivat | osta ostakaa",
    "maksaa": "maksan maksat maksaa maksamme maksatte maksavat | maksoin maksoit maksoi maksoimme maksoitte maksoivat | maksa maksakaa",
    "tulla": "tulen tulet tulee tulemme tulette tulevat | tulin tulit tuli tulimme tulitte tulivat | tule tulkaa",
    "mennä": "menen menet menee menemme menette menevät | menin menit meni menimme menitte menivät | mene menkää",
    "kävellä": "kävelen kävelet kävelee kävelemme kävelette kävelevät | kävelin kävelit käveli kävelimme kävelitte kävelivät | kävele kävelkää",
    "haluta": "haluan haluat haluaa haluamme haluatte haluavat | halusin halusit halusi halusimme halusitte halusivat | halua halutkaa",
    "tarvita": "tarvitsen tarvitset tarvitsee tarvitsemme tarvitsette tarvitsevat | tarvitsin tarvitsit tarvitsi tarvitsimme tarvitsitte tarvitsivat | tarvitse tarvitkaa",
    "häiritä": "häiritsen häiritset häiritsee häiritsemme häiritsette häiritsevät | häiritsin häiritsit häiritsi häiritsimme häiritsitte häiritsivät | häiritse häiritkää",
    "olla": "olen olet on olemme olette ovat | olin olit oli olimme olitte olivat | ole olkaa",
    "syödä": "syön syöt syö syömme syötte syövät | söin söit söi söimme söitte söivät | syö syökää",
    "tehdä": "teen teet tekee teemme teette tekevät | tein teit teki teimme teitte tekivät | tee tehkää",
    "ottaa": "otan otat ottaa otamme otatte ottavat | otin otit otti otimme otitte ottivat | ota ottakaa",
    "antaa": "annan annat antaa annamme annatte antavat | annoin annoit antoi annoimme annoitte antoivat | anna antakaa",
    "lukea": "luen luet lukee luemme luette lukevat | luin luit luki luimme luitte lukivat | lue lukekaa",
}
docs = []
for lemma, forms in EXPECTED_VERBS.items():
    pres, past, imp = (p.split() for p in forms.split("|"))
    cases = [({"verb_form": "infinitive"}, lemma)]
    for tense, fs in (("present", pres), ("past", past)):
        cases += [({"number": nb, "person": p, "verb_form": tense}, f) for (p, nb), f in zip(PERSONS, fs)]
    cases += [({"number": "singular", "verb_form": "imperative"}, imp[0]),
              ({"number": "plural", "verb_form": "imperative"}, imp[1])]
    docs.append(doc(lemma, "verbs", cases))
w(T / "verbs.paradigm.yaml", "---\n".join(docs))

EXPECTED_ADJ = {
    "iso": "isompi isoin", "helppo": "helpompi helpoin", "vanha": "vanhempi vanhin", "kylmä": "kylmempi kylmin",
    "sininen": "sinisempi sinisin", "iloinen": "iloisempi iloisin", "vapaa": "vapaampi vapain",
    "hyvä": "parempi paras", "pitkä": "pidempi pisin", "uusi": "uudempi uusin", "kaunis": "kauniimpi kaunein",
}
docs = []
for lemma, forms in EXPECTED_ADJ.items():
    comp, sup = forms.split()
    docs.append(doc(lemma, "adjectives", [({"degree": "positive"}, lemma), ({"degree": "comparative"}, comp),
                                          ({"degree": "superlative"}, sup)]))
w(T / "adjectives.paradigm.yaml", "---\n".join(docs))

docs = [doc(l, "pronouns", [({"case": c, "number": nb}, f) for c, f in zip(PRON_CASES, fs.split())]) for l, nb, fs in PRON]
w(T / "pronouns.paradigm.yaml", "---\n".join(docs))
print("fi: rules and tests written")
