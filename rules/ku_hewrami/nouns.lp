% rules/ku_hewrami/nouns.lp
% Northern Kurdish (Kurmanji) (Hewrami dialect) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 349: A grammar of Hewramî (2026), pages 48, 107, 253, 293, 303, 304, 317, 319, 320, 323, 331, 332, 333, 334, 338
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dega_type                    dega
%   eya_type                     eya
%   piya_type                    pîya, zema
%   yane_type                    yané
%   ro_type                      řo, şû
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
