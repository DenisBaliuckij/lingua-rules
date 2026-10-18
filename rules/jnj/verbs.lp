% rules/jnj/verbs.lp
% Yemsa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 47623: The Verbal System of Yemsa (Omotic language of Ethiopia) (2013), pages 96, 158, 161, 165, 169, 170, 171, 277, 278, 282, 283, 284, 285, 288, 289, 293, 306, 310, 311
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   o_class                      dùudo — grammar: "o-class"
%   a_class                      sòokà — grammar: "a-class"
%   o_class_2                    wòsto — grammar: "o-class"
%   kassu_type                   kássu
%   a_class_2                    dànà — grammar: "a-class"
%   a_class_3                    kàlà — grammar: "a-class"
%   a_class_4                    hàmà — grammar: "a-class"
% Irregular (listed in data/verbs.exceptions.tsv): bĩya, bʻya, du, fo, kássu 'bake, mu, wu, yo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
