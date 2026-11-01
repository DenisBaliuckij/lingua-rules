% rules/kus/adjectives.lp
% Kusaal adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 183: Grammaire élémentaire du kusaal parlé au Burkina Faso (2014), pages 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 56, 57
%   doc 51192: A Grammar of Agolle Kusaal: Revised Version (2015), pages 144, 145, 229, 231, 234, 261, 314, 315
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   genre_iv                     balorʋk — grammar: "genre IV"
%   genre_v                      berɩt — grammar: "genre V"
%   croisement_de_genres_sing_classe_5_7_pl berʋk — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   genre_iv_2                   be’ʋk — grammar: "genre IV"
%   genre_v_2                    bul — grammar: "genre V"
%   genre_v_3                    bɛɛl — grammar: "genre V"
%   croisement_de_genres_sing_classe_5_7_pl_2 bʋgɩsʋk — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   croisement_de_genres_sing_classe_5_7_pl_3 fa’asɩk — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   croisement_de_genres_sing_classe_5_7_pl_4 gĩŋ — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   genre_iv_3                   ko'ok — grammar: "genre IV"
%   genre_v_4                    kpãrɩt — grammar: "genre V"
%   genre_v_5                    kãsɩt — grammar: "genre V"
%   croisement_de_genres_sing_classe_5_7_pl_5 kʋrʋk — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   genre_v_6                    lammet — grammar: "genre V"
%   genre_iv_4                   lɛɛʋk — grammar: "genre IV"
%   genre_iv_5                   maʋk — grammar: "genre IV"
%   croisement_de_genres_sing_classe_5_7_pl_6 ma’asɩk — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   croisement_de_genres_sing_classe_5_7_pl_7 milisʋk — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   genre_v_7                    mum — grammar: "genre V"
%   genre_v_8                    pol — grammar: "genre V"
%   croisement_de_genres_sing_classe_5_7_pl_8 sʋŋ — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   genre_v_9                    tɩta’at — grammar: "genre V"
%   genre_iv_6                   vook — grammar: "genre IV"
%   genre_iv_7                   wok — grammar: "genre IV"
%   genre_iv_8                   wɩɩʋk — grammar: "genre IV"
%   croisement_de_genres_sing_classe_5_7_pl_9 yalʋŋ — grammar: "Croisement de genres (sing. classe 5/7, pl. classe 10)"
%   genre_iv_9                   yook — grammar: "genre IV"
%   genre_v_10                   yãlʋŋ — grammar: "genre V"
%   genre_v_11                   yõosot — grammar: "genre V"
%   genre_iv_10                  zẽ’ʋk — grammar: "genre IV"
% Irregular (listed in data/adjectives.exceptions.tsv): pɛɛlɩk
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
