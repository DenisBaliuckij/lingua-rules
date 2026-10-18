% rules/tsb/adjectives.lp
% Tsamakko adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25224: A Grammar of Ts'amakko (2014), pages 84, 85, 86, 87, 90, 93, 148, 170, 189, 192, 195
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   arr_akko_type                arr-akko, c’ubbol-akko, gaal-akko, geecc-akko ...
%   baay_al_akko_type            baay-al-akko
%   buus_ol_akko_type            buuš-ol-akko
%   uskakk_ol_akko_type          uskakk-ol-akko
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
