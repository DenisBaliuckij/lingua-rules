% rules/cay/verbs.lp
% Cayuga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38716: LIN 6050 Structure of Cayuga. Course Package. (2014), pages 18, 40, 41, 128, 148, 149
%   doc 70331: Native Languages: A Support Document for the Teaching of Language Patterns - Oneida, Cayug (2011), pages 16, 17, 18, 19, 27, 62, 63
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   atronyahn_type               atrǫnyahn
%   ahyaks_type                  ahyaks
%   dislocative_habitual         ahyagwah — grammar: "dislocative habitual"
%   progressive_habitual         atrowih — grammar: "progressive habitual"
%   progressive_habitual_2       ahyagwęh — grammar: "progressive habitual"
% Irregular (listed in data/verbs.exceptions.tsv): ahyagwa̲ h, at-ehdahk did, atrowi̲ h, d-ehdahgwęh to believe, d-ehdahkwaˀ to be a believer, da:-ehdahk would, dę-ehdahk will believe
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
