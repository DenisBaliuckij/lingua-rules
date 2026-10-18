% rules/erg/nouns.lp
% Erromangan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388228: An Erromangan (Sye) Grammar (1998), pages 56, 79, 82, 83, 84, 85, 89, 104, 116
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   alwo_type                    alwo
%   ave_type                     ave
%   ave_hai_type                 ave-...-hai
%   itahorug_type                itahorug
%   nelpavine_type               nelpavine
%   no_type                      no, ni
%   ntelgo_type                  ntelgo
%   retpo_type                   retpo
% Irregular (listed in data/nouns.exceptions.tsv): eye, nahimnalam, nahiven, natman, natmonuc, nelwame, netalam, neteme, offspring, sister
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
