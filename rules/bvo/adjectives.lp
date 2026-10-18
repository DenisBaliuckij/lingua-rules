% rules/bvo/adjectives.lp
% Bolgo adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79462: Phonology and Morphology of Bolgo (2019), pages 131, 132, 133, 134, 135, 136, 138, 139, 146, 148, 152, 153
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   plurals_with_i               baw — grammar: "Plurals with [-i]/[-ɪ]"
%   plurals_with_i_i             beɾɡil — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_i_i_2           bul — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_i_i_3           busuɾu — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_no_change_to_the_root buuti — grammar: "Plurals with no change to the root"
%   plurals_with_i_i_4           dawal — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_no_change_to_the_root_2 dundi — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_3 fahal — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_4 falfal — grammar: "Plurals with no change to the root"
%   original_arabic_plural       faɾhan — grammar: "Original Arabic plural"
%   other_methods_of_plural_formation hoɾ — grammar: "Other methods of plural formation"
%   plurals_with_no_change_to_the_root_5 hulɡu — grammar: "Plurals with no change to the root"
%   plurals_with_i_i_5           hɛŋɡɔɾɔ — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_i_2             jɛw — grammar: "Plurals with [-i]/[-ɪ]"
%   other_methods_of_plural_formation_2 kalbat — grammar: "Other methods of plural formation"
%   plurals_with_no_change_to_the_root_6 keja — grammar: "Plurals with no change to the root"
%   plurals_with_i_i_6           kɛɾɔ — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_i_i_7           kɛɾɡɪl — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_i_i_8           kʊndʊl — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_i_3             lam — grammar: "Plurals with [-i]/[-ɪ]"
%   plurals_with_floating_atr_suprafix liina — grammar: "Plurals with floating [+ATR] suprafix"
%   plurals_with_i_i_9           lʊɾ — grammar: "Plurals with [-ɾi]/[-ɽi]/[-ɾɪ]/[-ɽɪ]"
%   plurals_with_no_change_to_the_root_7 mullu — grammar: "Plurals with no change to the root"
%   plurals_with_i_4             mɔɔɡɔ — grammar: "Plurals with [-i]/[-ɪ]"
%   reduplicated_plural          mɪmba — grammar: "Reduplicated plural"
%   plurals_with_no_change_to_the_root_8 sahi — grammar: "Plurals with no change to the root"
%   plurals_with_i_5             sam — grammar: "Plurals with [-i]/[-ɪ]"
%   plurals_with_floating_atr_suprafix_2 samba — grammar: "Plurals with floating [+ATR] suprafix"
%   plurals_with_i_6             saw — grammar: "Plurals with [-i]/[-ɪ]"
%   plurals_with_no_change_to_the_root_9 sila — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_10 taɾin — grammar: "Plurals with no change to the root"
%   reduplicated_plural_2        tʊɾ — grammar: "Reduplicated plural"
%   plurals_with_no_change_to_the_root_11 tʊɾʊ — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_12 wasi — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_13 wɔɔɾɔ — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_14 ɡaasi — grammar: "Plurals with no change to the root"
%   plurals_with_i_7             ɲaw — grammar: "Plurals with [-i]/[-ɪ]"
%   plurals_with_floating_atr_suprafix_3 ɲaŋɡa — grammar: "Plurals with floating [+ATR] suprafix"
%   plurals_with_i_8             ɲɔɡɔ — grammar: "Plurals with [-i]/[-ɪ]"
%   plurals_with_no_change_to_the_root_15 ʔaafe — grammar: "Plurals with no change to the root"
%   plurals_with_no_change_to_the_root_16 ʔaaɾi — grammar: "Plurals with no change to the root"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
