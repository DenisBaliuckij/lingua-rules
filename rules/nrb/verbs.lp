% rules/nrb/verbs.lp
% Nara verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73269: Grammar of the Nyimang Language (Nuba Mountains) (1938), pages 132, 133, 134, 138, 139, 147, 154, 155, 166, 167, 185
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   nyig_type                    nyig
%   de_type                      de
%   nyigi_type                   nyigi
%   te_type                      te
%   twil_type                    twil
%   jeg_type                     jeg
%   vowel_stem                   leu — grammar: "Vowel stem"
%   conjugation_in_n             lu — grammar: "conjugation in -n"
%   tali_type                    tali
%   twie_type                    twie
%   bijeg_type                   bijeg
% Irregular (listed in data/verbs.exceptions.tsv): bi, elv, kilvu, nuf'ag, tile
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
