% rules/ikw/verbs.lp
% Ik verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 49679: A grammar of Ik (Icé-tód): Northeast Uganda’s last thriving Kuliak language (2014), pages 85, 126, 215, 275, 286, 331, 366, 475, 477, 721, 722
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   itoni_type                   ítóni
%   ttn_type                     ɪtɛ́tɔ́nɪ
%   hn_type                      hɔn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
