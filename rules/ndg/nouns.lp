% rules/ndg/nouns.lp
% Ndengeleko nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46718: The Ndengeleko Language of Tanzania (2013), pages 72, 152, 153, 160
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   lu_boko_type                 lu-bóko
%   lu_fyagiilo_type             lu-fyágiilo
%   lu_gl_type                   lu-gʊ́lʊ
%   lu_kolo_type                 lu-kólo
%   lu_koonzi_type               lu-kóonzi
%   lu_kuta_type                 lu-kúta
%   lu_lm_type                   lu-lɪ́mɪ
%   lubaanja_type                lubáanja
%   lukwl_type                   lukwɪ́ɪlɪ
%   lusoonga_type                lusóonga
%   noun_class_1                 mmiɲé — grammar: "noun class 1"
%   noun_class_3                 mméleko — grammar: "noun class 3"
%   ndmbo_type                   ndʊ́ʊmbo
%   ngwaapa_type                 ngwáápa
%   noun_class_3_2               nnáka — grammar: "noun class 3"
%   noun_class_1_2               nnálʊʊme — grammar: "noun class 1"
%   u_bia_type                   u-bíɲa
%   u_liingo_type                u-líingo
%   iingo_type                   íingo
%   noun_class_1_3               ŋŋéni — grammar: "noun class 1"
%   noun_class_3_3               ŋŋʊ́ʊ́nda — grammar: "noun class 3"
%   noun_class_3_4               ɲɲwɪ́ɪ́lɪ — grammar: "noun class 3"
%   noun_class_3_5               ɲɲáaŋgo — grammar: "noun class 3"
%   noun_class_1_4               ɲɲʊ́bɪ́ɪlai — grammar: "noun class 1"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
