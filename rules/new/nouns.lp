% rules/new/nouns.lp
% Bhaktapur Newari nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388459: A Grammar of the Classical Newari (1941), pages 21
%   doc 931517: A Descriptive Study of the Bhaktapur Dialect of Newari (1984), pages 93, 121
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   raja_type                    raja
%   che_type                     che
%   lahat_type                   lahat
%   juju_pun_type                juju-puN
%   misato_type                  misato
%   ra_m_type                    ra:m
%   saphu_type                   saphu
%   saphu_ta_type                saphu-tA
%   si_type                      si
%   yal_ta_type                  yal-tA
%   cakku_ta_type                cAkku-tA
%   khica_type                   khica
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
