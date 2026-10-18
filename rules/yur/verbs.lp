% rules/yur/verbs.lp
% Yurok verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 107787: Yurok (1911), pages 9
%   doc 107796: The Yurok Language: Grammar, Texts, Lexicon (1958), pages 35, 45, 46, 47, 49, 50, 51, 52, 53, 55, 56, 59, 63, 64, 71, 72, 87, 91, 108
%   doc 388915: Basic Yurok grammar (2010), pages 24, 32, 33, 34
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   e_class                      nep — grammar: "e-class"
%   o_class_passive              tmo'l — grammar: "o-class passive"
%   e_class_collective_plural    helomeyek — grammar: "e-class collective plural"
%   o_class                      kohto-liS — grammar: "o-class"
%   e_class_collective_plural_2  nepek — grammar: "e-class collective plural"
%   e_class_non_collective_plural sermertek, hohkuemek — grammar: "e-class non-collective plural"
%   new_type                     new
%   e_class_verbs                ma^epet — grammar: "e-class verbs"
%   e_class_passive              nekcen — grammar: "e-class passive"
%   o_class_verbs                so't — grammar: "o-class verbs"
%   first_type_o_class_intransitive_verbs_wh sonow — grammar: "First type o-class intransitive verbs whose stems end in Cow- or Caw-"
%   a_class_verbs                skewip — grammar: "a-class verbs"
%   o_class_2                    chpe’roy — grammar: "o-class"
%   e_class_2                    kepoyuer — grammar: "e-class"
%   oo_class                     kohchewok — grammar: "oo-class"
%   e_class_3                    myoot, ro’op — grammar: "e-class"
%   a_modifying_verbs            njgayk — grammar: "a-modifying verbs"
%   e_class_verbs_with_stems_ending_ew nohpew — grammar: "e-class verbs with stems ending ew-"
%   oo_class_2                   rechok — grammar: "oo-class"
%   o_class_3                    ruerow — grammar: "o-class"
%   oo_class_3                   sootok — grammar: "oo-class"
%   oo_class_4                   wenok — grammar: "oo-class"
%   class_type                   ?
%   e_class_verbs_e_m_increment  helomey — grammar: "e-class verbs -e*?m- increment"
%   o_class_verbs_second_type    ho'^omohtk — grammar: "o-class verbs, second type"
%   e_class_verbs_i9m_increment  mur-^^ — grammar: "e-class verbs -i9m- increment"
%   e_class_verbs_2              pi^iy — grammar: "e-class verbs"
%   e_class_verbs_with_stems_ending_ey_oy_or cekcey — grammar: "e-class verbs with stems ending ey-, oy-, or ay-"
%   e_class_verbs_with_stems_ending_ey_oy_or_2 ckirisay — grammar: "e-class verbs with stems ending ey-, oy-, or ay-"
%   e_class_4                    kemtey — grammar: "e-class"
%   la_y_type                    la-y
%   lenewkw_type                 lenewkw
%   o_class_4                    me^el — grammar: "o-class"
%   menewkw_type                 menewkw
%   na_menewkw_type              na-menewkw
%   e_class_verbs_with_stems_ending_ey_oy_or_3 pelomoy — grammar: "e-class verbs with stems ending ey-, oy-, or ay-"
%   e_class_verb                 samat — grammar: "e-class verb"
%   sloyonem_type                sloyonem
% Irregular (listed in data/verbs.exceptions.tsv): ?ahsp, ^^, ciwey, cken, ckey, cye'^wol, heg, hegol, ho-'?ylcel, hopkek, k^esk^es, kahc ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
