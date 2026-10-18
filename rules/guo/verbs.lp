% rules/guo/verbs.lp
% Guayabero verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388387: Una Gramática Pedagógica del Guayabero (2012), pages 10, 14, 16, 24, 25, 33, 34, 39, 40, 43, 48, 50, 57, 60, 63, 68, 69, 73, 79
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kiat_type                    kiat
%   nabaxit_type                 nabaxit
%   clase_2                      jul — grammar: "Clase 2"
%   clase_2_2                    jalwek — grammar: "Clase 2"
%   clase_3_raices_que_terminan_con_a to'a — grammar: "Clase 3 - raíces que terminan con -a"
%   clase_1_implied_by_context_of_formativos faen, tʉp — grammar: "Clase 1 (implied by context of formativos -n, -p, -s in section 4.2.2 following this table, though not explicitly labeled as 'Class 1' in the header, the text says 'Ejemplos de verbos Clase 2' later, implying this is likely Class 1 or a general example. However, looking at the structure, it lists specific verbs. Let's look at the forms.)"
%   is_type                      is
%   verbos_de_diseno             lenaboelaliajwa — grammar: "verbos de diseño"
%   clase_1                      toet — grammar: "Clase 1"
%   clase_3                      itpaei, naxoei — grammar: "Clase 3"
%   naewajan_type                naewʉajan
%   clase_3_2                    xaljow — grammar: "Clase 3"
%   verbos_de_movimiento         kaxa — grammar: "verbos de movimiento"
%   on_type                      on
%   pasivas_usadas_con_el_verbo_mot_pagar mot — grammar: "pasivas usadas con el verbo mot ‘pagar’"
%   pasa_type                    pasa
% Irregular (listed in data/verbs.exceptions.tsv): chijia, jʉmchiliajwa, tae, xael
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
