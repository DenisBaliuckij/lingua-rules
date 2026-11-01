% rules/nhx/nouns.lp
% Náhuatl (Mecayapan y Tatahuicapan de Juárez) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 151: Gramática náhuatl de los municipios de Mecayapan y Tatahuicapan de Juárez, Veracruz (2002), pages 39, 44, 49, 51, 52, 53, 60, 78, 104, 106, 107, 108, 109, 127, 128, 129, 134, 143, 144, 178, 179, 182, 192
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   chacaltzin_type              chacaltzîn
%   chacalin_type                chacalîn
%   choochin_type                choochîn
%   choolin_type                 choolîn
%   choolintzin_type             choolîntzîn
%   taochin_type                 taochîn
%   taolin_type                  taolîn
%   taolintzin_type              taolîntzîn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
