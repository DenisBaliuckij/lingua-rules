% rules/caa/verbs.lp
% Classical Ch'olti' verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388466: A Grammatical Description of the Early Classic Maya Hieroglyphic Inscriptions (2006), pages 42
%   doc 388477: The Grammar of Ch'orti' Maya Folktales (2014), pages 82, 108, 109, 111, 114, 116, 118
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   chujy_type                   ch’ujy
%   tzna_type                    tz’na
%   middle_voice_stem_achpa      achpa — grammar: "Middle Voice stem achpa"
%   chuy_type                    ch’uy
%   usr_type                     usr
%   taryo_type                   taryo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
