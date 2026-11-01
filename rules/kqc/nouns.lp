% rules/kqc/nouns.lp
% Doromu-Koki nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389974: Doromu-Koki Grammar Sketch (2012), pages 49, 53, 55, 63
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   baba_type                    baba
%   dubu_type                    dubu
%   madini_type                  madini
%   meraini_type                 meraini
%   nono_type                    nono
%   rasini_type                  rasini
%   tobaini_type                 tobaini
%   vada_type                    vada
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
