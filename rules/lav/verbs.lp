% rules/lav/verbs.lp
% Latvian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 66450: Latviešu valodas gramatika (2013), pages 548, 549
%   doc 73759: Latvian Grammar (2021), pages 40, 58, 86, 150, 185, 195, 203, 227, 231, 233, 261, 293
%   doc 389070: A short grammar of Latgalian (2011), pages 18, 21, 22, 23, 27, 31, 33
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   tresa_konjugacija            lasīt — grammar: "trešā konjugācija"
%   declinable_present_active_participle augt — grammar: "declinable present active participle"
%   reflexive                    turetis — grammar: "reflexive"
%   non_reflexive                dareit — grammar: "non-reflexive"
%   conjugation_1_subclass_1     nest — grammar: "conjugation 1 subclass 1"
%   conjugation_class_2          tērēt — grammar: "conjugation class 2"
%   long_stem                    runuot — grammar: "long stem"
%   i_conjugation                gribēt — grammar: "i-conjugation"
%   tresa_konjugacija_2          audzināt — grammar: "trešā konjugācija"
%   conjugation_3_subclass_2     cerēt — grammar: "conjugation 3 subclass 2"
%   tresa_konjugacija_3          dziedāt, turēt — grammar: "trešā konjugācija"
%   conjugation_class_1          smieties — grammar: "conjugation class 1"
%   tresa_konjugacija_pirma_grupa zināt — grammar: "trešā konjugācija, pirmā grupa"
%   o_conjugation                darēt — grammar: "o-conjugation"
%   i_conjugation_2              dzierdēt — grammar: "i-conjugation"
%   e_conjugation                est — grammar: "e-conjugation"
%   tresa_konjugacija_4          gulēt — grammar: "trešā konjugācija"
%   conjugation_1_subclass_2     lauzt — grammar: "conjugation 1 subclass 2"
%   e_conjugation_2              lyugt — grammar: "e-conjugation"
%   conjugation_class_3          mācīties — grammar: "conjugation class 3"
%   o_conjugation_short_stem     prast — grammar: "o-conjugation short stem"
%   a_conjugation                radzēt — grammar: "a-conjugation"
%   i_conjugation_3              redzēt — grammar: "i-conjugation"
%   short_stem_i                 vilkt — grammar: "short stem (I)"
%   present_active_attributive_participle cejt — grammar: "present active (attributive) participle"
%   short_stem_i_2               segēt — grammar: "short stem (I)"
%   e_conjugation_3              mest — grammar: "e-conjugation"
% Irregular (listed in data/verbs.exceptions.tsv): būt, dot, iet
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
