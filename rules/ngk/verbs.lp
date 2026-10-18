% rules/ngk/verbs.lp
% Ngalakan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289478: Ngalakan grammar, texts and vocabulary (1983), pages 130, 132
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   thematic_verb_paradigms      !uk, banar, bet, ie? ... — grammar: "thematic verb paradigms"
%   thematic_verb_paradigms_2    bawun?, mal]in? — grammar: "thematic verb paradigms"
%   thematic_verb_paradigms_3    bul, gel — grammar: "thematic verb paradigms"
%   thematic_verb_paradigms_4    i)urum? — grammar: "thematic verb paradigms"
%   ma_type                      ma
%   thematic_verb_paradigms_5    mungu, warja?, yalala, yana? ... — grammar: "thematic verb paradigms"
%   be_type                      be, ye
%   ru_type                      ru
%   yini_type                    yini
%   class_type                   ə
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
