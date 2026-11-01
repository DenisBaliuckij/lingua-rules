% rules/div/nouns.lp
% Dhivehi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28913: The Dhivehi Language: A Descriptive and Historical Grammar of Maldivian and Its Dialects (2002), pages 109, 110, 111, 117, 214, 215, 244, 262
%   doc 920743: Dhivehi: The Language of the Maldives (2017), pages 84, 114, 164, 166, 167, 169, 171, 173, 174, 175, 178, 179, 188, 191, 349, 350, 351, 353, 354, 355, 357, 358, 359
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   cons_stem                    gas — grammar: "cons. stem"
%   a_type_iii_i_stem            geri — grammar: "A. type III: i-stem"
%   type_ia_cons_stem            ges — grammar: "type Ia: cons.-stem"
%   type_i_cons_stem             jam̆burōz — grammar: "type I: cons.-stem"
%   type_ii_a_stem               kuruba — grammar: "type II: a-stem"
%   type_ib_cons_stem            mad — grammar: "type Ib: cons.-stem"
%   type_ib_cons_stem_2          mas — grammar: "type Ib: cons.-stem"
%   a_type_iiib_i_stem           mehi — grammar: "A. type IIIb: i-stem"
%   type_i_cons_stem_2           mı̄del — grammar: "type I: cons.-stem"
%   nonhuman                     bas — grammar: "nonhuman"
%   a_type_iva_denoting_persons  mı̄s — grammar: "A. type IVa (denoting persons)"
%   a_type_iiia_i_stem           tari — grammar: "A. type IIIa: i-stem"
%   root_noun                    ge — grammar: "root noun"
%   frozen_def_form              mı̄hā — grammar: "frozen def.form"
%   human                        kokko — grammar: "human"
%   a_stem                       an̆ga — grammar: "a-stem"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
