% rules/bre/verbs.lp
% Breton verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389307: A Grammar of Modern Breton (1986), pages 60, 147, 149, 151, 156, 157, 160, 161, 181, 186
%   doc 389308: Grammaire du breton contemporain (1997), pages 32, 36, 43, 44, 45, 54, 114, 197, 198, 205
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   bezan_type                   bezañ
%   boueta_type                  boueta, grañ
%   lakaat_type                  lakaat
%   lenn_type                    lenn
%   blegnan_type                 blegnañ
%   deuin_type                   deuiñ
%   heulian_type                 heuliañ
%   dalc_han_type                dalc'hañ
%   dalc_hel_type                dalc'hel
%   gouin_type                   gouiñ
%   gouezhan_type                gouezhañ
%   rein_type                    reiñ
%   derc_hel_type                derc'hel
%   deskin_type                  deskin
%   eus_type                     eus
% Irregular (listed in data/verbs.exceptions.tsv): girañ, mont, ober
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
