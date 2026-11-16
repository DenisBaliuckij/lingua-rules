% rules/adx/verbs.lp
% Amdo Tibetan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40835: Amdo Tibetan: A Comprehensive Grammar Textbook (2018), pages 189, 235, 279
%   doc 73299: Amdo Tibetan Language: An Introduction to Normative Oral Amdo (2016), pages 125, 220, 221, 248, 497
%   doc 91504: Colloquial Amdo Tibetan: A Complete Course for Adult English Speakers (n.d.), pages 80, 133, 155
%   doc 103550: Amdo Tibetan Language: An Introduction to Normative Amdo Tibetan (2016), pages 124, 219, 220, 247, 496
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   r_type                       R
%   ir_type                      ir
%   class_type                   $
%   r_type_2                     $r
%   r_type_3                     r%
%   r_type_4                     $r?
%   va_type                      va
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
