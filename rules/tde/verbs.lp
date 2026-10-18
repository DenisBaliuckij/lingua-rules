% rules/tde/verbs.lp
% Tiranige verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289603: A Grammar of Tiranige (2017), pages 136, 160, 174, 187, 191, 192, 193, 197, 200, 226, 235, 245
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   experiential_perfect_negative bàlì-yè — grammar: "Experiential perfect negative"
%   recent_perfect               ùnì — grammar: "Recent perfect"
%   n_y_type                     nɔ́:-y
%   igile_type                   ígílé
%   b_type                       bɛ̀
%   cey_type                     cèy
%   kay_ra_type                  káy-rá
%   sa_type                      sâ
%   se_go_type                   sé:gó
%   causative_with_suffix_m_u    sígó-m — grammar: "causative with suffix -m(ú)-"
%   tombo_type                   tómbó
%   yey_type                     yèy
%   yogo_mu_type                 yógó-mú
%   yb_b_type                    yɛ́b-b
%   un_type                      ún
%   class_type                   ɲɔ́
%   noyo_type                    nóyó
%   sigo_type                    sígó
%   sogo_type                    sógó
%   ja_lo_type                   já:ló
%   causative_with_suffix_m_u_2  yégá-m — grammar: "causative with suffix -m(ú)-"
%   igi_y_type                   ígí-yɔ́
%   imb_type                     ímbɔ́
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
