% rules/sje/verbs.lp
% Pite Saami verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 207: A grammar of Pite Saami (2014), pages 109, 117, 118, 119, 120, 122, 130, 134, 139, 148, 152, 170, 181, 188, 191, 193, 194
%   doc 388175: A corpus-based grammar of spoken Pite Saami (2013), pages 116, 122, 123, 126, 129, 130, 138, 139, 142, 147, 156, 160, 187, 192, 194, 198, 200, 303
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_v                      ságastit — grammar: "Class V"
%   viessot_type                 viessot
%   class_iv                     välldut — grammar: "Class IV"
%   class_iia                    bassat — grammar: "Class IIa"
%   class_iib                    bårråt — grammar: "Class IIb"
%   gullat_type                  gullat
%   bargatjit_type               bargatjit
%   tjajbmat_type                tjájbmat, båhtet
% Irregular (listed in data/verbs.exceptions.tsv): årrot
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
