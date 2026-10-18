% rules/mnx/nouns.lp
% Sougb nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289711: A grammar sketch of Sougb (2002), pages 21, 27, 28, 38, 39
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   a_stem_inalienable_noun      aga — grammar: "a-stem inalienable noun"
%   a_stem_inalienable_noun_2    agto — grammar: "a-stem inalienable noun"
%   e_stem_inalienable_noun      ebehito — grammar: "e-stem inalienable noun"
%   i_stem_inalienable_noun      idgo — grammar: "i-stem inalienable noun"
%   i_stem_inalienable_noun_2    ihi — grammar: "i-stem inalienable noun"
%   i_stem_inalienable_noun_3    ir — grammar: "i-stem inalienable noun"
%   o_stem_inalienable_noun      oho, ohora — grammar: "o-stem inalienable noun"
%   u_stem_inalienable_noun      ug — grammar: "u-stem inalienable noun"
%   u_stem_inalienable_noun_2    unyo — grammar: "u-stem inalienable noun"
%   consanguinal_relation_ego_male agona — grammar: "consanguinal relation (Ego male)"
%   consanguinal_relation_grandmother awa — grammar: "consanguinal relation (grandmother)"
%   consanguinal_relation_younger_sister damehito — grammar: "consanguinal relation (younger sister)"
%   consanguinal_relation_elder_sister damowa — grammar: "consanguinal relation (elder sister)"
%   consanguinal_relation_ego_female igbegena — grammar: "consanguinal relation (Ego female)"
%   consanguinal_relation_mother im — grammar: "consanguinal relation (mother)"
%   consanguinal_relation_father ina — grammar: "consanguinal relation (father)"
%   consanguinal_relation_ego_female_2 jemeito — grammar: "consanguinal relation (Ego female)"
%   consanguinal_relation_grandfather jemowa — grammar: "consanguinal relation (grandfather)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
