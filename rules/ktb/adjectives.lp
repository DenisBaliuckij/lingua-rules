% rules/ktb/adjectives.lp
% Kambaata adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38440: Das K'abeena: Deskriptive Grammatik einer hochlandostkuschitischen Sprache (1985), pages 65, 66, 100, 101, 103, 123, 124, 125, 126, 127, 130, 142, 143, 164, 212, 217, 234, 243
%   doc 69380: A Grammar of Kambaata (Ethiopia) Part 1: Phonology, Nominal Morphology and Non-verbal Pred (2005), pages 172, 222, 229, 241, 281, 282, 314, 321, 383, 384, 409, 424, 447
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   declension_m3                qall-ú — grammar: "declension M3"
%   declension_f3a               qall-ú-ta — grammar: "declension F3a"
%   gabbaccu_type                gabbaccu, nubaaccu
%   kolisso_type                 koliššo
%   kiraar_type                  k’iraa’r
%   ekeenaamu_type               ekee’naamu, milkaamu
%   iibbaabbu_type               iibbaabbu
%   kinka_type                   kinka, moola
%   daffaree_type                daffaree
%   duuda_type                   duuda
%   kiraaru_type                 k’iraa’ru
%   qacu_type                    qacú
% Irregular (listed in data/adjectives.exceptions.tsv): annánka, k’awu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
