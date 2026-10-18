% rules/dba/nouns.lp
% Bangime nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 84591: A Grammar of Bangiime (2010), pages 27, 47, 68
%   doc 84592: A Grammar of Bangime (2018), pages 135, 250, 251, 257, 260, 276, 281, 323, 324, 325, 326, 397, 423
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   h_melody_noun_with_h_l_diminutive bírɛ́ — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   bw_type                      b̀ẃ
%   h_melody_noun_with_h_l_diminutive_2 jírímbò — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   h_melody_noun_with_h_l_diminutive_3 kwóómbɛ̀ — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   h_melody_noun_with_h_l_diminutive_4 kárámbɛ̀ — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   h_melody_noun_with_h_l_diminutive_5 kóróŋgò — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   h_melody_noun_with_h_l_diminutive_6 kúⁿ — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   ku_type                      kǔ
%   h_melody_noun_with_h_l_diminutive_7 míndī — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   n_type                       nɔ́
%   h_melody_noun_with_h_l_diminutive_8 túⁿ — grammar: "/H/-melody noun with /H(*)L*/ diminutive"
%   n_type_2                     ń
%   sme_type                     śmé
%   o_mp_type                    ɡǒ:mṕ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
