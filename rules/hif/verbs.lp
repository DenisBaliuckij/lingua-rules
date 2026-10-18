% rules/hif/verbs.lp
% Fiji Hindi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289444: Fiji Hindi: A Basic Course and Reference Grammar (1970), pages 65, 85, 110, 131, 180, 250, 251, 253, 255, 256, 260, 271, 272
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   bolnaa_type                  bolnaa
%   bolaa_type                   bolaa
%   fiji_hindi_present_tense_verb_forms karnaa — grammar: "Fiji Hindi Present Tense Verb Forms"
%   baithegaa_type               baithegaa
%   jaaegaa_type                 jaaegaa
%   khariidnaa_type              khariidnaa
%   aagaa_type                   aagaa
%   bologaa_type                 bologaa
%   bulaegaa_type                bulaegaa
%   dekhegaa_type                dekhegaa, maagegaa, rahegaa
%   sunegaa_type                 sunegaa
% Irregular (listed in data/verbs.exceptions.tsv): aanaa, denaa, honaa, jaanaa, lenaa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
