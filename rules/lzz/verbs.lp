% rules/lzz/verbs.lp
% Laz verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8233: Description du dialecte laze d’Arhavi (caucasique du sud, Turquie) Grammaire et textes (2009), pages 170, 367, 372, 378, 387, 396, 410, 640
%   doc 54373: ლაზურ-მეგრული გრამატიკა. I. მორფოლოგია (Laz-Megrelian Grammar. I. Morphology) (2015), pages 922, 923, 924, 930, 931
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   megrelian                    ჭარ — grammar: "Megrelian"
%   car_type                     ç’ar
%   verbes_preverbes             xt — grammar: "verbes préverbés"
%   carum_type                   ç’arum
%   megrelian_2                  ღურ — grammar: "Megrelian"
%   etre_type                    être
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
