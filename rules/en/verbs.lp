% rules/en/verbs.lp
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
verb_class("like", e_final). verb_class("love", e_final). verb_class("live", e_final). verb_class("use", e_final). verb_class("move", e_final). verb_class("change", e_final). verb_class("hope", e_final). verb_class("dance", e_final). verb_class("close", e_final). verb_class("arrive", e_final).
verb_class("study", y_final). verb_class("try", y_final). verb_class("cry", y_final). verb_class("carry", y_final). verb_class("worry", y_final). verb_class("marry", y_final). verb_class("hurry", y_final). verb_class("copy", y_final).
verb_class("watch", sibilant). verb_class("wash", sibilant). verb_class("fix", sibilant). verb_class("pass", sibilant). verb_class("push", sibilant). verb_class("miss", sibilant). verb_class("finish", sibilant). verb_class("touch", sibilant).
verb_class("die", ie_final). verb_class("lie", ie_final). verb_class("tie", ie_final).
double_consonant("stop", "p"). double_consonant("plan", "n"). double_consonant("drop", "p"). double_consonant("shop", "p"). double_consonant("admit", "t"). double_consonant("prefer", "r"). double_consonant("chat", "t"). double_consonant("rob", "b").

% --- irregular verbs ---------------------------------------------------------
irregular("be"). form("be", "verb_form=present_3sg", "is"). form("be", "verb_form=past", "was").
  form("be", "verb_form=past_participle", "been"). form("be", "verb_form=present_participle", "being").
irregular("have"). form("have", "verb_form=present_3sg", "has"). form("have", "verb_form=past", "had").
  form("have", "verb_form=past_participle", "had"). form("have", "verb_form=present_participle", "having").
irregular("do"). form("do", "verb_form=present_3sg", "does"). form("do", "verb_form=past", "did").
  form("do", "verb_form=past_participle", "done"). form("do", "verb_form=present_participle", "doing").
irregular("go"). form("go", "verb_form=present_3sg", "goes"). form("go", "verb_form=past", "went").
  form("go", "verb_form=past_participle", "gone"). form("go", "verb_form=present_participle", "going").
irregular("say"). form("say", "verb_form=present_3sg", "says"). form("say", "verb_form=past", "said").
  form("say", "verb_form=past_participle", "said"). form("say", "verb_form=present_participle", "saying").
irregular("make"). form("make", "verb_form=present_3sg", "makes"). form("make", "verb_form=past", "made").
  form("make", "verb_form=past_participle", "made"). form("make", "verb_form=present_participle", "making").
irregular("take"). form("take", "verb_form=present_3sg", "takes"). form("take", "verb_form=past", "took").
  form("take", "verb_form=past_participle", "taken"). form("take", "verb_form=present_participle", "taking").
irregular("come"). form("come", "verb_form=present_3sg", "comes"). form("come", "verb_form=past", "came").
  form("come", "verb_form=past_participle", "come"). form("come", "verb_form=present_participle", "coming").
irregular("see"). form("see", "verb_form=present_3sg", "sees"). form("see", "verb_form=past", "saw").
  form("see", "verb_form=past_participle", "seen"). form("see", "verb_form=present_participle", "seeing").
irregular("know"). form("know", "verb_form=present_3sg", "knows"). form("know", "verb_form=past", "knew").
  form("know", "verb_form=past_participle", "known"). form("know", "verb_form=present_participle", "knowing").
irregular("get"). form("get", "verb_form=present_3sg", "gets"). form("get", "verb_form=past", "got").
  form("get", "verb_form=past_participle", "got"). form("get", "verb_form=present_participle", "getting").
irregular("give"). form("give", "verb_form=present_3sg", "gives"). form("give", "verb_form=past", "gave").
  form("give", "verb_form=past_participle", "given"). form("give", "verb_form=present_participle", "giving").
irregular("find"). form("find", "verb_form=present_3sg", "finds"). form("find", "verb_form=past", "found").
  form("find", "verb_form=past_participle", "found"). form("find", "verb_form=present_participle", "finding").
irregular("think"). form("think", "verb_form=present_3sg", "thinks"). form("think", "verb_form=past", "thought").
  form("think", "verb_form=past_participle", "thought"). form("think", "verb_form=present_participle", "thinking").
irregular("tell"). form("tell", "verb_form=present_3sg", "tells"). form("tell", "verb_form=past", "told").
  form("tell", "verb_form=past_participle", "told"). form("tell", "verb_form=present_participle", "telling").
irregular("become"). form("become", "verb_form=present_3sg", "becomes"). form("become", "verb_form=past", "became").
  form("become", "verb_form=past_participle", "become"). form("become", "verb_form=present_participle", "becoming").
irregular("leave"). form("leave", "verb_form=present_3sg", "leaves"). form("leave", "verb_form=past", "left").
  form("leave", "verb_form=past_participle", "left"). form("leave", "verb_form=present_participle", "leaving").
irregular("feel"). form("feel", "verb_form=present_3sg", "feels"). form("feel", "verb_form=past", "felt").
  form("feel", "verb_form=past_participle", "felt"). form("feel", "verb_form=present_participle", "feeling").
irregular("bring"). form("bring", "verb_form=present_3sg", "brings"). form("bring", "verb_form=past", "brought").
  form("bring", "verb_form=past_participle", "brought"). form("bring", "verb_form=present_participle", "bringing").
irregular("begin"). form("begin", "verb_form=present_3sg", "begins"). form("begin", "verb_form=past", "began").
  form("begin", "verb_form=past_participle", "begun"). form("begin", "verb_form=present_participle", "beginning").
irregular("keep"). form("keep", "verb_form=present_3sg", "keeps"). form("keep", "verb_form=past", "kept").
  form("keep", "verb_form=past_participle", "kept"). form("keep", "verb_form=present_participle", "keeping").
irregular("write"). form("write", "verb_form=present_3sg", "writes"). form("write", "verb_form=past", "wrote").
  form("write", "verb_form=past_participle", "written"). form("write", "verb_form=present_participle", "writing").
irregular("stand"). form("stand", "verb_form=present_3sg", "stands"). form("stand", "verb_form=past", "stood").
  form("stand", "verb_form=past_participle", "stood"). form("stand", "verb_form=present_participle", "standing").
irregular("hear"). form("hear", "verb_form=present_3sg", "hears"). form("hear", "verb_form=past", "heard").
  form("hear", "verb_form=past_participle", "heard"). form("hear", "verb_form=present_participle", "hearing").
irregular("meet"). form("meet", "verb_form=present_3sg", "meets"). form("meet", "verb_form=past", "met").
  form("meet", "verb_form=past_participle", "met"). form("meet", "verb_form=present_participle", "meeting").
irregular("run"). form("run", "verb_form=present_3sg", "runs"). form("run", "verb_form=past", "ran").
  form("run", "verb_form=past_participle", "run"). form("run", "verb_form=present_participle", "running").
irregular("pay"). form("pay", "verb_form=present_3sg", "pays"). form("pay", "verb_form=past", "paid").
  form("pay", "verb_form=past_participle", "paid"). form("pay", "verb_form=present_participle", "paying").
irregular("sit"). form("sit", "verb_form=present_3sg", "sits"). form("sit", "verb_form=past", "sat").
  form("sit", "verb_form=past_participle", "sat"). form("sit", "verb_form=present_participle", "sitting").
irregular("speak"). form("speak", "verb_form=present_3sg", "speaks"). form("speak", "verb_form=past", "spoke").
  form("speak", "verb_form=past_participle", "spoken"). form("speak", "verb_form=present_participle", "speaking").
irregular("read"). form("read", "verb_form=present_3sg", "reads"). form("read", "verb_form=past", "read").
  form("read", "verb_form=past_participle", "read"). form("read", "verb_form=present_participle", "reading").
irregular("grow"). form("grow", "verb_form=present_3sg", "grows"). form("grow", "verb_form=past", "grew").
  form("grow", "verb_form=past_participle", "grown"). form("grow", "verb_form=present_participle", "growing").
irregular("lose"). form("lose", "verb_form=present_3sg", "loses"). form("lose", "verb_form=past", "lost").
  form("lose", "verb_form=past_participle", "lost"). form("lose", "verb_form=present_participle", "losing").
irregular("fall"). form("fall", "verb_form=present_3sg", "falls"). form("fall", "verb_form=past", "fell").
  form("fall", "verb_form=past_participle", "fallen"). form("fall", "verb_form=present_participle", "falling").
irregular("send"). form("send", "verb_form=present_3sg", "sends"). form("send", "verb_form=past", "sent").
  form("send", "verb_form=past_participle", "sent"). form("send", "verb_form=present_participle", "sending").
irregular("build"). form("build", "verb_form=present_3sg", "builds"). form("build", "verb_form=past", "built").
  form("build", "verb_form=past_participle", "built"). form("build", "verb_form=present_participle", "building").
irregular("understand"). form("understand", "verb_form=present_3sg", "understands"). form("understand", "verb_form=past", "understood").
  form("understand", "verb_form=past_participle", "understood"). form("understand", "verb_form=present_participle", "understanding").
irregular("break"). form("break", "verb_form=present_3sg", "breaks"). form("break", "verb_form=past", "broke").
  form("break", "verb_form=past_participle", "broken"). form("break", "verb_form=present_participle", "breaking").
irregular("spend"). form("spend", "verb_form=present_3sg", "spends"). form("spend", "verb_form=past", "spent").
  form("spend", "verb_form=past_participle", "spent"). form("spend", "verb_form=present_participle", "spending").
irregular("cut"). form("cut", "verb_form=present_3sg", "cuts"). form("cut", "verb_form=past", "cut").
  form("cut", "verb_form=past_participle", "cut"). form("cut", "verb_form=present_participle", "cutting").
irregular("drive"). form("drive", "verb_form=present_3sg", "drives"). form("drive", "verb_form=past", "drove").
  form("drive", "verb_form=past_participle", "driven"). form("drive", "verb_form=present_participle", "driving").
irregular("buy"). form("buy", "verb_form=present_3sg", "buys"). form("buy", "verb_form=past", "bought").
  form("buy", "verb_form=past_participle", "bought"). form("buy", "verb_form=present_participle", "buying").
irregular("choose"). form("choose", "verb_form=present_3sg", "chooses"). form("choose", "verb_form=past", "chose").
  form("choose", "verb_form=past_participle", "chosen"). form("choose", "verb_form=present_participle", "choosing").
irregular("eat"). form("eat", "verb_form=present_3sg", "eats"). form("eat", "verb_form=past", "ate").
  form("eat", "verb_form=past_participle", "eaten"). form("eat", "verb_form=present_participle", "eating").
irregular("drink"). form("drink", "verb_form=present_3sg", "drinks"). form("drink", "verb_form=past", "drank").
  form("drink", "verb_form=past_participle", "drunk"). form("drink", "verb_form=present_participle", "drinking").
irregular("sing"). form("sing", "verb_form=present_3sg", "sings"). form("sing", "verb_form=past", "sang").
  form("sing", "verb_form=past_participle", "sung"). form("sing", "verb_form=present_participle", "singing").
irregular("swim"). form("swim", "verb_form=present_3sg", "swims"). form("swim", "verb_form=past", "swam").
  form("swim", "verb_form=past_participle", "swum"). form("swim", "verb_form=present_participle", "swimming").
irregular("fly"). form("fly", "verb_form=present_3sg", "flies"). form("fly", "verb_form=past", "flew").
  form("fly", "verb_form=past_participle", "flown"). form("fly", "verb_form=present_participle", "flying").
irregular("forget"). form("forget", "verb_form=present_3sg", "forgets"). form("forget", "verb_form=past", "forgot").
  form("forget", "verb_form=past_participle", "forgotten"). form("forget", "verb_form=present_participle", "forgetting").
irregular("sleep"). form("sleep", "verb_form=present_3sg", "sleeps"). form("sleep", "verb_form=past", "slept").
  form("sleep", "verb_form=past_participle", "slept"). form("sleep", "verb_form=present_participle", "sleeping").
irregular("teach"). form("teach", "verb_form=present_3sg", "teaches"). form("teach", "verb_form=past", "taught").
  form("teach", "verb_form=past_participle", "taught"). form("teach", "verb_form=present_participle", "teaching").
irregular("catch"). form("catch", "verb_form=present_3sg", "catches"). form("catch", "verb_form=past", "caught").
  form("catch", "verb_form=past_participle", "caught"). form("catch", "verb_form=present_participle", "catching").
irregular("throw"). form("throw", "verb_form=present_3sg", "throws"). form("throw", "verb_form=past", "threw").
  form("throw", "verb_form=past_participle", "thrown"). form("throw", "verb_form=present_participle", "throwing").
irregular("win"). form("win", "verb_form=present_3sg", "wins"). form("win", "verb_form=past", "won").
  form("win", "verb_form=past_participle", "won"). form("win", "verb_form=present_participle", "winning").
irregular("sell"). form("sell", "verb_form=present_3sg", "sells"). form("sell", "verb_form=past", "sold").
  form("sell", "verb_form=past_participle", "sold"). form("sell", "verb_form=present_participle", "selling").
irregular("put"). form("put", "verb_form=present_3sg", "puts"). form("put", "verb_form=past", "put").
  form("put", "verb_form=past_participle", "put"). form("put", "verb_form=present_participle", "putting").
irregular("let"). form("let", "verb_form=present_3sg", "lets"). form("let", "verb_form=past", "let").
  form("let", "verb_form=past_participle", "let"). form("let", "verb_form=present_participle", "letting").
irregular("set"). form("set", "verb_form=present_3sg", "sets"). form("set", "verb_form=past", "set").
  form("set", "verb_form=past_participle", "set"). form("set", "verb_form=present_participle", "setting").
irregular("lead"). form("lead", "verb_form=present_3sg", "leads"). form("lead", "verb_form=past", "led").
  form("lead", "verb_form=past_participle", "led"). form("lead", "verb_form=present_participle", "leading").
