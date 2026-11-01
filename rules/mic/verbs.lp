% rules/mic/verbs.lp
% Micmac verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92319: The Micmac Grammar of Father Pacifique (1990), pages 45, 46, 58, 59, 61, 63, 65, 84, 94, 102, 110, 125, 126, 128, 129, 154, 162, 163
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   eliev_type                   eliev
%   mena_tmk_type                mena'tmk
%   sixth_conjugation            ne — grammar: "SIXTH CONJUGATION"
%   sixth_conjugation_2          me — grammar: "SIXTH CONJUGATION"
%   conjunct_or_indicative_with_when teluisiyanl — grammar: "CONJUNCT OR INDICATIVE with When"
%   first_conjugation_i          teluisi — grammar: "first conjugation (-i)"
%   alasutmamk_type              alasutmamk
%   tluisiav_type                tluisiav
%   second_conjugation_a         alasutmay — grammar: "second conjugation (-a)"
%   third_conjugation_a          ewi'kike — grammar: "third conjugation (-a)"
%   ewi_kikeyanl_type            ewi'kikeyanl
%   fifth_conjugation_g          mena'tu — grammar: "fifth conjugation (-g)"
%   mna_tu_type                  mna'tu
%   fourth_conjugation_r         nestm — grammar: "fourth conjugation (-r)"
%   first_conjugation_d          wekai — grammar: "first conjugation (-d)"
%   first_conjugation_d_2        welei — grammar: "first conjugation (-d)"
%   first_conjugation_a_si       ala'si — grammar: "first conjugation (-a'si)"
%   elmiev_type                  elmiev
%   ma_timk_type                 ma'timk
%   wi_kikew_type                wi'kikew
%   ma_tin_type                  ma'tin
%   pemiev_type                  pemiev
%   aiiey_type                   aiiey
%   sixth_conjugation_k          nemi'k — grammar: "sixth conjugation (-k)"
%   telamu_k_type                telamu'k
% Irregular (listed in data/verbs.exceptions.tsv): kisi tuitesk, kisi tulep, kisi tultes
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
