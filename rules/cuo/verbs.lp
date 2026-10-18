% rules/cuo/verbs.lp
% Cumanagoto verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70419: Kure mana choto maimuru (Nuestra lengua está viva) (2018), pages 18, 43, 53, 55, 56, 57, 61, 67
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   vetativo_o_imperativo_negativo apoi — grammar: "Vetativo o Imperativo Negativo"
%   verbos_intransitivos_primarios akipü — grammar: "verbos intransitivos primarios"
%   apoika_type                  apoika
%   verbos_intransitivos_derivados are — grammar: "verbos intransitivos derivados"
%   imperativo                   ikake — grammar: "Imperativo"
% Irregular (listed in data/verbs.exceptions.tsv): kuwarü
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
