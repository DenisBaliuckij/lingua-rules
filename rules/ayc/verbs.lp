% rules/ayc/verbs.lp
% Aymara verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 48740: Aymara (2001), pages 59, 65
%   doc 389896: Aymar Arux Akhamawa: Aymara Language Is Like This (Level One, Second Edition) (2003), pages 21, 68, 72, 93, 108, 109, 167
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   yatichirina_type             yatichirïña
%   kusisina_type                kusisiña, luraña, usuña
%   sara_type                    sara
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
