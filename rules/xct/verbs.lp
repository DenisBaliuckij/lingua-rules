% rules/xct/verbs.lp
% Classical Tibetan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40838: A Primer for Classical Literary Tibetan: Volume 1 The Grammar (1991), pages 49
%   doc 52615: A Textbook in Classical Tibetan (2018), pages 70, 84
%   doc 816268: The Classical Tibetan Language (1992), pages 234
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i_tr_c                       བྱེད་ — grammar: "I TR/C"
%   iii_intr_c                   འདུ་ — grammar: "III INTR/C"
%   i_tr_c_2                     སོན་ — grammar: "I TR/C"
%   iv_intr_nc                   སྐེ་ — grammar: "IV INTR/NC"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
