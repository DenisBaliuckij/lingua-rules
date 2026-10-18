% rules/kjv/adjectives.lp
% Illirica (Slavic) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105438: Grammatica della lingua slava (illirica) (1878), pages 42, 53, 55, 57, 58, 59, 60, 63, 64, 67, 100, 106, 107, 108, 111, 112, 113
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   tema_vruc_uscita_in_consonante_molle vruć — grammar: "Tema vruć, uscita in consonante molle"
%   tema_mlad_uscita_in_consonante_dura mlad — grammar: "Tema mlad, uscita in consonante dura"
% Irregular (listed in data/adjectives.exceptions.tsv): vas
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
