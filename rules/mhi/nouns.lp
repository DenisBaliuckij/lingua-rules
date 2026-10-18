% rules/mhi/nouns.lp
% Ma'di nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 85334: A Study of the Logbara (Ma'di) Language: Grammar and Vocabulary (1928), pages 39, 40, 46, 94
%   doc 85335: A Grammar of Ma'di (2003), pages 115, 126
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   zaa_type                     zâa
%   ago_type                     ago
%   ba_type                      bâ
%   karue_type                   kàrüè
%   lukundre_type                lukundre
%   ogu_type                     ogu
%   otii_type                    otii
%   roz_i_type                   roz'i
%   adra_type                    àdrà
%   adzala_type                  àdzàlà
%   adekole_type                 àdékolé
%   ake_type                     àké
%   aupi_type                    àüpi
%   agupi_type                   âgüpi
%   ata_type                     âtâ
%   eedra_type                   èedrâ
% Irregular (listed in data/nouns.exceptions.tsv): IZl, ldrazi, ädrupl
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
