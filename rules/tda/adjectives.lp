% rules/tda/adjectives.lp
% Tagdal adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92: A grammar of Tagdal, a Northern Songhay language (2021), pages 55, 56, 64, 65, 66, 67, 68, 69, 70, 71, 86, 88, 89, 132
%   doc 22828: A Grammar of Tagdal: a Northern Songhay language (2021), pages 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 87, 89, 90, 133
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   songhay_cognates_w_no_adjvr_in_singular biibí — grammar: "Songhay cognates w/ no adjvr in singular form"
%   songhay_cognates             buuhú — grammar: "Songhay cognates"
%   bttqt_type                   bǝ́ttǝqǝt
%   songhay_cognates_2           deegí — grammar: "Songhay cognates"
%   songhay_cognates_w_no_adjvr_in_singular_2 dúŋguuru — grammar: "Songhay cognates w/ no adjvr in singular form"
%   songhay_cognates_3           fas — grammar: "Songhay cognates"
%   songhay_cognates_4           fik — grammar: "Songhay cognates"
%   songhay_cognates_5           fuufú — grammar: "Songhay cognates"
%   songhay_cognates_6           fuunús — grammar: "Songhay cognates"
%   songhay_cognates_7           gar — grammar: "Songhay cognates"
%   songhay_cognates_8           gúugut — grammar: "Songhay cognates"
%   songhay_cognates_w_no_adjvr_in_singular_3 hiimí — grammar: "Songhay cognates w/ no adjvr in singular form"
%   songhay_cognates_9           kuukú — grammar: "Songhay cognates"
%   songhay_cognates_10          kǝkáy — grammar: "Songhay cognates"
%   songhay_cognates_11          mor — grammar: "Songhay cognates"
%   songhay_cognates_12          mun — grammar: "Songhay cognates"
%   songhay_cognates_13          nam — grammar: "Songhay cognates"
%   songhay_cognates_14          warɣá — grammar: "Songhay cognates"
%   ddrl_type                    ǝddǝ́rɣǝl
%   ffrz_type                    ǝffǝ́rǝz
%   rrrggt_type                  ǝrrǝ́rǝggǝt
%   zzar_type                    ǝzzár
%   zma_type                     ǝ́zma
%   zri_type                     ǝ́zri
%   songhay_cognates_15          ʃíidi — grammar: "Songhay cognates"
%   songhay_cognates_16          ʒe — grammar: "Songhay cognates"
% Irregular (listed in data/adjectives.exceptions.tsv): benná, dǝ́lbǝb, dǝ́rǝn, hóssay, miiʒí, mǝ́lluulu, ǝ́bbǝr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
