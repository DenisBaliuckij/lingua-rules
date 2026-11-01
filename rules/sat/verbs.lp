% rules/sat/verbs.lp
% Santali verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389299: A Grammar of the Santal Language (1873), pages 37, 51, 179, 197, 203, 205, 207, 208, 224, 225, 226, 227, 230, 238, 239, 244, 248, 269, 276, 280, 281, 282, 299, 300, 312
%   doc 851551: A Grammar of the Santhal Language (1873), pages 34, 35, 37, 50, 176, 178, 181, 183, 206, 207, 209, 211, 223, 224, 225, 226, 229, 231, 238, 247, 268, 271, 294, 303
%   doc 851554: An Introduction to the Santal Language (n.d.), pages 35, 59
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dal_type                     dal
%   reflexive_and_passive_future_tense Dal-oU — grammar: "REFLEXIVE (AND PASSIVE.) FUTURE TENSE"
%   anterior_past                dal-len — grammar: "Anterior Past"
%   recent_past                  dal-en — grammar: "Recent Past"
%   dal_et_type                  dal-et
%   special_incomplete_present   dal-et'-kan — grammar: "SPECIAL INCOMPLETE PRESENT"
%   dal_an_type                  dal-an
%   dal_a_type                   dal-a
%   optative                     dal-koti — grammar: "Optative"
%   special_incomplete_present_2 dal-ed-in-kan-a-e — grammar: "SPECIAL INCOMPLETE PRESENT"
%   special_incomplete_present_3 dal-ed-in-kan-khan-e — grammar: "SPECIAL INCOMPLETE PRESENT"
%   special_incomplete_present_4 paset'-e-dal-ed-in-kan — grammar: "SPECIAL INCOMPLETE PRESENT"
%   reflexive_with_the_dative_case dal-jon — grammar: "REFLEXIVE. WITH THE DATIVE CASE."
%   anterior_past_indicative     dal-led-in — grammar: "Anterior Past Indicative"
%   dal_led_in_tahekan_type      dal-led-in-tahekan
%   indecisive_pluperfect        Dal-len-tahekan-a-A — grammar: "INDECISIVE PLUPERFECT"
%   indecisive_pluperfect_indicative dal-let — grammar: "Indecisive Pluperfect Indicative"
%   inchoative_future_indicative dal-oti-lagit — grammar: "Inchoative Future Indicative"
%   paset_type                   paset
%   decisive_pluperfect          dal-akat — grammar: "Decisive Pluperfect"
%   general_incomplete_past_indicative dal-ed-in — grammar: "General Incomplete Past Indicative"
%   reservative_form_reflexive_future_tense dal-koU-a-ti — grammar: "RESERVATIVE FORM, REFLEXIVE. FUTURE TENSE."
%   preliminary_benediotive      dal-len-ma — grammar: "PRELIMINARY BENEDIOTIVE"
%   benediotive                  Dal-oJc — grammar: "BENEDIOTIVE"
%   inchoative_future            dal-ka-tidagit — grammar: "Inchoative Future"
% Irregular (listed in data/verbs.exceptions.tsv): bal-an-kha n-in, paset'-in -dal-an
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
