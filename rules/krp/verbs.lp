% rules/krp/verbs.lp
% Durorp verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38187: Kpewi Durorp: Language of the Bororp of the Korup ethnic group (2014), pages 81, 82
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   baat_type                    baat
%   dia_type                     dia
%   maak_type                    maak
%   norngha_type                 norngha
%   quai_type                    quai
%   sa_type                      sa
%   seeng_type                   seeng
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
