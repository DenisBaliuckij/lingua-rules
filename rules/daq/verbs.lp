% rules/daq/verbs.lp
% Dandami Maria verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388345: A Grammar of Dandami Maria (1979), pages 118, 119, 120, 121, 123, 129, 130, 169
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kars_type                    kars
%   da_type                      da
%   min_type                     min
%   vata_type                    vata
%   da_y_type                    da:y
%   a_rvur_type                  a:rvur
%   eyvur_type                   eyvur
%   man_type                     man
%   mu_vur_type                  mu:vur
%   na_l_vur_type                na:l.vur
% Irregular (listed in data/verbs.exceptions.tsv): an
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
