% rules/vec/verbs.lp
% Venetian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71610: General Grammar Book of the Venetan Language and its Varieties (2007), pages 7, 8, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33
%   doc 388335: Manual Gramaticałe Xenerałe de ła Łéngua Vèneta e łe só varianti (2012), pages 8, 21, 22, 27, 29, 32, 33
%   doc 388336: Grammatica veneta (2015), pages 55, 65, 69, 79, 91, 92, 98, 134
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   finir_type                   finir
%   first_conjugation_ar         bevar — grammar: "first conjugation (-ar)"
%   first_conjugation_ar_2       netar — grammar: "first conjugation (-ar)"
%   first_conjugation_ar_3       cantare — grammar: "first conjugation (-ar)"
%   third_conjugation_ire        sentire — grammar: "third conjugation (-ire)"
%   second_conjugation_ere       vendere — grammar: "second conjugation (-ere)"
%   fin_ir_type                  fin-ir
%   net_ar_type                  net-ar
%   cantar_type                  cantar
%   sentir_type                  sentir
%   prima_coniugazione           dormare — grammar: "Prima coniugazione"
%   c2nd_class_er                temer — grammar: "2ND class (-er)"
%   c2nd_class_ar_e              bévar, móvar — grammar: "2ND class (-ar[e])"
% Irregular (listed in data/verbs.exceptions.tsv): èssere
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
