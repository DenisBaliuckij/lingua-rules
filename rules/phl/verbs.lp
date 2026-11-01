% rules/phl/verbs.lp
% Palula verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93: A grammar of Palula (2016), pages 71, 72, 73, 74, 138, 140, 141, 142, 143, 145, 147, 149, 156, 185, 234, 246, 249, 253, 254, 274, 321, 323
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   til_type                     til
%   vowel_ending_verb            su — grammar: "vowel-ending verb"
%   l_verb                       lanɡ — grammar: "L-verb"
%   t_verb                       ṣač — grammar: "T-verb"
%   mucool_u_type                mučóol-u
%   nikhaat_u_type               nikháat-u
%   phedil_u_type                phedíl-u
%   lama_type                    lamá
%   paak_u_type                  páak-u
%   uthi_type                    uthí
%   caare_type                   čaaré
%   car_type                     čár
%   saat_u_type                  ṣáat-u
% Irregular (listed in data/verbs.exceptions.tsv): be, paš
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
