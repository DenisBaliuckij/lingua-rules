% rules/kcx/nouns.lp
% Haro nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388881: A Grammar of Haro with Comparative Notes on the Ometo Linguistic Group (2004), pages 36, 68, 69, 70, 73, 90, 91, 114, 119, 120, 182, 183
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kapo_type                    kapó
%   angus_type                   angús
%   lanko_type                   lánko
%   paucal_nouns                 doró, laak’á, moló, šaató — grammar: "paucal nouns"
%   paucal_nouns_2               déyšši — grammar: "paucal nouns"
%   paucal_nouns_3               lúkku — grammar: "paucal nouns"
%   miso_type                    míšo
%   paucal_nouns_4               sábbi — grammar: "paucal nouns"
%   paucal_nouns_5               wúdri — grammar: "paucal nouns"
%   indo_type                    índo
%   paucal_nouns_6               addá — grammar: "paucal nouns"
%   paucal_nouns_7               ansi — grammar: "paucal nouns"
%   paucal_nouns_8               azáge — grammar: "paucal nouns"
%   high_tone_accent_on_penultimate_syllable bíššo — grammar: "high tone-accent on penultimate syllable"
%   bolla_type                   bólla
%   boltte_type                  bóltte
%   high_tone_accent_on_ultimate_syllable kaaré — grammar: "high tone-accent on ultimate syllable"
%   paucal_nouns_9               k’aaré — grammar: "paucal nouns"
%   mayala_type                  mayála
%   naysi_type                   náyši
%   paucal_nouns_10              s’olínte — grammar: "paucal nouns"
%   paucal_nouns_11              tuke — grammar: "paucal nouns"
%   kinship_nouns                téngo — grammar: "kinship nouns"
%   paucal_nouns_12              áde — grammar: "paucal nouns"
%   eni_type                     éni
% Irregular (listed in data/nouns.exceptions.tsv): íše
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
