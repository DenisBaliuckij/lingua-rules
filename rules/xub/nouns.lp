% rules/xub/nouns.lp
% Betta Kurumba nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388328: A Grammar of Betta Kurumba (2003), pages 39, 45, 46, 47, 48, 79, 154, 155, 156, 164, 178, 179, 318, 319
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vowel_final_roots            abbi, kuddi, uṅitī — grammar: "vowel-final roots"
%   regular_nouns                manu — grammar: "Regular nouns"
%   kinri_type                   kiṇri, maṇu
%   koyi_type                    kōyī
%   regular_nouns_2              uḍan — grammar: "Regular nouns"
%   regular_nouns_3              uḍiti — grammar: "Regular nouns"
%   uditi_ra_type                uḍiti-rā
%   unan_type                    uṅan
%   vowel_final_roots_2          erēñi, kirī, nayō — grammar: "vowel-final roots"
%   vowel_final_roots_3          podī — grammar: "vowel-final roots"
%   nasal_final_roots            uṅun — grammar: "nasal-final roots"
%   stems_with_iya               ayā — grammar: "Stems with /-iya/"
%   vowel_final_roots_4          kalō — grammar: "vowel-final roots"
%   stems_with_a                 kiryā — grammar: "Stems with /-a/"
%   stems_with_iya_2             kāṅgā — grammar: "Stems with /-iya/"
%   nasal_final_roots_2          kōyō — grammar: "nasal-final roots"
%   stems_with_a_2               kūṇ — grammar: "Stems with /-a/"
%   stems_with_iya_3             maynu — grammar: "Stems with /-iya/"
%   stems_with_iya_4             maṭṭi — grammar: "Stems with /-iya/"
%   vowel_final_roots_5          muyrpi — grammar: "vowel-final roots"
%   stems_with_a_3               nayā — grammar: "Stems with /-a/"
%   stems_with_a_4               pāṭ — grammar: "Stems with /-a/"
%   stems_with_iya_5             pāṭu — grammar: "Stems with /-iya/"
%   nasal_final_roots_3          tārmaññ — grammar: "nasal-final roots"
%   stems_with_a_5               tāyyā — grammar: "Stems with /-a/"
%   stems_with_iya_6             uḍitī — grammar: "Stems with /-iya/"
%   stems_with_iya_7             uṇuwā — grammar: "Stems with /-iya/"
%   ydan_da_type                 yḍan-dā
% Irregular (listed in data/nouns.exceptions.tsv): anu, kambe, uburu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
