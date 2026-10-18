% rules/bzd/nouns.lp
% Bribri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38034: Gramática de la lengua bribri (2018), pages 62, 130, 156, 166
%   doc 38035: Se'ẽ yawö bribri wa: Aprendemos la lengua bribri (n.d.), pages 16, 17
%   doc 38050: Se' ttö bribri ie: Hablemos en bribri (2013), pages 22
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   alakol_type                  aláköl
%   awa_type                     awá
%   busi_type                    bùsi
%   kabe_type                    kabë̀
%   kal_type                     kàl
%   namu_type                    nãmũ̀
%   pe_type                      pë
%   u_type                       ũ̀
% Irregular (listed in data/nouns.exceptions.tsv): alà
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
