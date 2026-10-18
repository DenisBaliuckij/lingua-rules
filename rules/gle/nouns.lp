% rules/gle/nouns.lp
% Irish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68423: Modern Irish: Grammatical Structure and Dialectal Variation (1989), pages 129, 171, 172, 173, 174, 175, 176
%   doc 388257: Irish (2001), pages 33, 34, 38, 44, 45, 48, 49, 55
%   doc 388260: A Grammar of the Irish Language (1896), pages 32, 34, 78, 79, 91, 92, 95, 96
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   bpaodn_type                  bpaodn
%   ball_type                    ball
%   second_declension            lamh — grammar: "second declension"
%   subtype_a_implied_by_context_of_subtype muc — grammar: "Subtype A (implied by context of Subtype B following)"
%   subtype_e                    caora — grammar: "Subtype E"
%   first_declension             fear — grammar: "first declension"
%   subtype_b                    focal — grammar: "Subtype B"
%   subtype_d                    lacha — grammar: "Subtype D"
%   genitive_formed_by_broadening mathair — grammar: "Genitive formed by broadening"
%   subtype_c                    solas — grammar: "Subtype C"
%   subtype_b_2                  tamall — grammar: "Subtype B"
%   subtype_c_2                  tobar — grammar: "Subtype C"
%   second_declension_2          cailleach — grammar: "second declension"
%   fifth_declension             cathaoir — grammar: "fifth declension"
%   fifth_declension_2           comharsa — grammar: "fifth declension"
%   third_declension             muinteoir — grammar: "third declension"
%   first_declension_2           orlach — grammar: "first declension"
%   subtype_c_3                  Gaeltacht — grammar: "Subtype C"
%   subtype_c_4                  am — grammar: "Subtype C"
%   subtype_e_2                  badoir — grammar: "Subtype E"
%   subtype_b_3                  binn — grammar: "Subtype B"
%   subtype_a                    cathair — grammar: "Subtype A"
%   subtype_b_4                  coroin — grammar: "Subtype B"
%   subtype_f                    saighdiur — grammar: "Subtype F"
%   subtype_c_5                  speal — grammar: "Subtype C"
%   fifth_declension_3           athair — grammar: "fifth declension"
%   fourth_declension            cailín — grammar: "fourth declension"
%   subtype_d_2                  greim — grammar: "Subtype D"
%   fourth_declension_2          madra — grammar: "fourth declension"
%   margadh_type                 margadh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
