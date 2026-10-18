% rules/ura/verbs.lp
% Urarina verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22830: A Grammar of Urarina (2006), pages 398
%   doc 105423: Grammaire hollandaise (n.d.), pages 110, 112, 116, 117, 129, 130
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verbe_regulier               drukken — grammar: "verbe regulier"
%   stative_intransitive_verbs   ahaaruto-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_2 anaito-a — grammar: "stative intransitive verbs"
%   donderen_type                donderen
%   stative_intransitive_verbs_3 eloato-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_4 haraauto-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_5 kaitato-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_6 karato-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_7 kauato-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_8 memuto-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_9 taba-a — grammar: "stative intransitive verbs"
%   stative_intransitive_verbs_10 ureeto-a — grammar: "stative intransitive verbs"
% Irregular (listed in data/verbs.exceptions.tsv): berauesiohwa-a
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
