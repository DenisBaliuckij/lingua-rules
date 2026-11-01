% rules/boa/nouns.lp
% Bora nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388612: A Grammar of Bora with Special Attention to Tone (2012), pages 93, 228, 229, 230, 235, 236, 276, 277, 279, 281
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   animate_collective           mɨ́amɯ́náà — grammar: "animate collective"
%   maxho_kpa_type               màˣʧʰó-kpà
%   inanimate_collective         mɯ́ʦʰɨ̀ːʦʰɨ̀ — grammar: "inanimate collective"
%   inanimate_collective_2       mɯ́ʦʰɨ́ːʦʰɨ̀-ʔɛ̀ — grammar: "inanimate collective"
%   inanimate_singular           ɯ́mɛ̀-ʔɛ̀ — grammar: "inanimate singular"
%   inanimate_singular_2         ɯ́mɨʔɛ̀ — grammar: "inanimate singular"
%   inanimate_singular_diminutive hɯ̀ːβá-kpɯ̀ — grammar: "inanimate singular diminutive"
%   collective_animate           kʰàː — grammar: "collective animate"
%   animate_singular             mɛ̀ːnì — grammar: "animate singular"
%   nokho_type                   noˀkʰo
%   inanimate_singular_3         tʰɛ̀ːʔì — grammar: "inanimate singular"
%   inanimate_singular_diminutive_2 tʰɛ́ːʔí-kpɯ̀ — grammar: "inanimate singular diminutive"
%   akho_kpa_type                àˀkʰó-kpà
%   oaha_type                    òβáˀʦʰà
%   haha_i_type                  ʧʰàˀʧʰá-ì
%   hakhahi_type                 ʧʰákʰàʧʰí-ɯ̀
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
