% rules/nya/verbs.lp
% Nyanja verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 845689: A Grammar of the Chinyanja Language as Spoken at Lake Nyassa (n.d.), pages 23, 44
%   doc 845690: An Introduction to the Chichewa Language (n.d.), pages 6
%   doc 845695: Chinyanja Basic Course (1965), pages 187, 244
%   doc 845700: A grammar of Chinyanja : a language spoken in British Central Africa, on and near the shor (1895), pages 18, 29, 102, 132, 146, 147, 148, 155, 162
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   indefinite_present           swa — grammar: "Indefinite Present"
%   kudzaswa_type                kudzaswa
%   present_subjunctive_used_as_imperative swe — grammar: "Present Subjunctive (used as Imperative)"
%   kuswa_type                   kuswa
%   bwela_type                   bwela
%   dya_type                     dya
%   ima_type                     ima
%   manga_type                   manga
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
