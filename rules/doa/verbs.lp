% rules/doa/verbs.lp
% Dom verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388398: A Grammar of the Dom Language: A Papuan Language of Papua New Guinea (2014), pages 100, 108, 111, 113, 118, 120, 144
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   emotive                      £Ďer — grammar: "Emotive"
%   emotive_2                    £Ďmol — grammar: "Emotive"
%   emotive_3                    £Ĺpal — grammar: "Emotive"
%   rising                       kan — grammar: "Rising"
%   falling_r                    mol, kor — grammar: "Falling-r"
%   er_type                      er
%   te_type                      te
%   pal_type                     pal
%   high                         ne — grammar: "High"
%   mol_type                     £mol
% Irregular (listed in data/verbs.exceptions.tsv): ă te
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
