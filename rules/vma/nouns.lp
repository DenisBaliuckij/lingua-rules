% rules/vma/nouns.lp
% Martuthunira nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 829458: Martuthunira: A Language of the Pilbara Region of Western Australia (1987), pages 158, 223, 226, 234
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kurntal_type                 kurntal, mirtily
%   kanyara_type                 kanyara
%   muyi_type                    muyi
%   nhartu_type                  nhartu
%   pawulu_type                  pawulu
%   warrirti_type                warrirti
%   jinkarn_type                 jinkarn, kalyaran
%   kanparr_type                 kanparr
%   kurlany_type                 kurlany
%   parla_type                   parla
%   kinterm                      ngapaari — grammar: "kinterm"
%   kinterm_2                    nyinu — grammar: "kinterm"
%   kinterm_3                    imra — grammar: "kinterm"
%   kinterm_4                    mimi — grammar: "kinterm"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
