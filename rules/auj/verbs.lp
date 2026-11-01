% rules/auj/verbs.lp
% Awjila Berber verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296241: A Grammar of Awjila Berber (Libya): Based on Umberto Paradisi’s Material (2013), pages 71, 72, 75, 76, 78, 79, 80, 81, 82, 83, 84, 88, 89, 101, 105, 106, 107, 108, 114, 115, 119, 122, 134
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   vc                           yan — grammar: "vc*"
%   ccvc                         fəšùš, dərùš — grammar: "ccvc"
%   cvc                          ẓẓàk — grammar: "c̄vc"
%   cvcc                         qàrəz — grammar: "cvcc"
%   cvcc_2                       vùrk — grammar: "cvcc"
%   vc_2                         yar — grammar: "vc*"
%   vc_3                         yax — grammar: "vc*"
%   sc_type                      šəc̄
%   c                            əss, əžž — grammar: "c̄*"
%   c_2                          əčč — grammar: "c̄*"
%   cc                           aṭs — grammar: "cc*"
%   ccc_stative_verbs            gəzzəl — grammar: "cc̄c stative verbs"
%   ccc_stative_verbs_2          ləqqəq — grammar: "cc̄c stative verbs"
%   cvc_2                        mmùm — grammar: "c̄vc"
%   ccc_stative_verbs_3          məlləl — grammar: "cc̄c stative verbs"
%   ccc_stative_verbs_4          məqqər — grammar: "cc̄c stative verbs"
%   ccc_stative_verbs_5          məššk — grammar: "cc̄c stative verbs"
%   vcc_initial_u_a_in_imperative uɣər — grammar: "vcc (initial u/a in imperative)"
%   vcc_initial_u_a_in_imperative_2 uṭər — grammar: "vcc (initial u/a in imperative)"
%   cc_2                         wəṭ — grammar: "cc"
%   ccc_stative_verbs_6          zəwwər — grammar: "cc̄c stative verbs"
%   ccc_stative_verbs_7          zəwwəɣ — grammar: "cc̄c stative verbs"
%   vcc_initial_u_a_in_imperative_3 àkər — grammar: "vcc (initial u/a in imperative)"
%   ccc_stative_verbs_8          šəṭṭəf, ɣəzzəf — grammar: "cc̄c stative verbs"
%   cc_3                         ə — grammar: "cc*"
%   c_3                          əmm — grammar: "c̄*"
%   regular_marking              arə́v — grammar: "Regular -marking"
%   vcc_initial_u_a_in_imperative_4 udən — grammar: "vcc (initial u/a in imperative)"
%   vcc_initial_u_a_in_imperative_5 ugəm — grammar: "vcc (initial u/a in imperative)"
%   s_vcc                        ìrəd — grammar: "š-vcc"
% Irregular (listed in data/verbs.exceptions.tsv): ag, uf, yi-d
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
