% rules/nor/verbs.lp
% Norwegian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 363: A reference guide to the syntax of North American Norwegian (2025), pages 92
%   doc 387259: Lær deg norsk! Corso di lingua norvegese Livelli A1-B1 del Quadro Comune Europeo di Riferi (2015), pages 50, 51, 53, 54, 142, 206
%   doc 389658: Norwegian (2002), pages 15, 17, 22
%   doc 942422: Norwegian Language Teaching Materials Development Project: Final Report (1967), pages 279, 280, 283
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   modalverb                    ville — grammar: "Modalverb"
%   modalverb_2                  burde — grammar: "Modalverb"
%   modalverb_3                  kunne — grammar: "Modalverb"
%   svake_verber_weak_verbs_te_past_sense les — grammar: "SVAKE VERBER (Weak verbs) -te Past sense"
%   svake_verber_weak_verbs_te_past_sense_2 send — grammar: "SVAKE VERBER (Weak verbs) -te Past sense"
%   svake_verber_weak_verbs_te_past_sense_3 spill — grammar: "SVAKE VERBER (Weak verbs) -te Past sense"
%   svake_verber_weak_verbs_et_past_tense tegn — grammar: "SVAKE VERBER (Weak verbs) -et Past tense"
% Irregular (listed in data/verbs.exceptions.tsv): beda, bera, bita, bryta, drikka, driva, fa, fyka, liggja, matte, simile, syngja
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
