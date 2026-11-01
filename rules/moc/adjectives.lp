% rules/moc/adjectives.lp
% Mocovi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388386: A Grammar of Mocovi (1998), pages 74, 78, 102, 103, 111, 127
%   doc 839240: A grammar of Mocoví (1998), pages 70, 72, 100
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjectives_ending_in_ayk_m_a_y_f caqayk, jaqayk, lawayk, sitaGarayk ... — grammar: "Adjectives ending in -ayk (M)/ -a y { F)"
%   adjectives_ending_in_ayk_m_a_y_f_2 laleGayk — grammar: "Adjectives ending in -ayk (M)/ -a y { F)"
%   adjectives_ending_in_ayk_m_a_y_f_3 qo?Goyk — grammar: "Adjectives ending in -ayk (M)/ -a y { F)"
%   adjectives_ending_in_ayk_m_a_y_f_4 saXaGarayk — grammar: "Adjectives ending in -ayk (M)/ -a y { F)"
%   tog_type                     tog
%   adjectives_ending_in_ayk_m_a_y_f_5 walayk — grammar: "Adjectives ending in -ayk (M)/ -a y { F)"
%   walogonaq_type               waloGonaq
%   yi_type                      yi
%   lalorki_type                 lalorki?
%   pa_ateta_type                pa?ateta
%   qoni_type                    qoni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
