% rules/ltz/verbs.lp
% Luxembourgish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389748: Petite Grammaire Luxembourgeoise (1996), pages 16, 30, 32, 33, 34, 35, 36, 38, 40, 41, 43, 52, 53, 54, 59, 72
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   leen_type                    leën
%   verbes_de_modalites          sollen, brauchen, däerfen, kënnen — grammar: "verbes de modalités"
%   verbes_tres_irreguliers      sëtzen, bitzen, setzen, genéissen ... — grammar: "verbes très irréguliers"
%   wellen_type                  wëllen, emfielen, afferen, billen ...
%   bleiwen_type                 bleiwen, dreiwen, fierwen
%   dierfen_type                 dierfen
%   gesinn_type                  gesinn
%   leien_type                   leien, hänken, stellen
%   preterits_les_plus_courants  bréngen — grammar: "prétérits les plus courants"
%   froen_type                   froen
%   goen_type                    goen
%   verbes_tres_irreguliers_2    bieden — grammar: "verbes très irréguliers"
%   fannen_type                  fannen
%   kreien_type                  kréien
%   kucken_type                  kucken
%   verbes_de_modalites_2        mussen — grammar: "verbes de modalités"
%   verbes_de_modalites_3        sallen — grammar: "verbes de modalités"
%   stinn_type                   stinn, dinn
%   verbes_de_modalites_4        wäerden — grammar: "verbes de modalités"
%   besennen_type                besënnen
%   bezuelen_type                bezuelen
%   geroden_type                 geroden
%   gewannen_type                gewannen
%   glewen_type                  glewen
%   kafen_type                   kafen
%   afen_type                    afen
%   babbellen_type               babbellen
%   baken_type                   baken
%   droen_type                   droen
%   drechnen_type                dréchnen
%   duzen_type                   duzen
%   heeschen_type                heeschen
%   ginnn_type                   ginnn
%   gruewen_type                 gruewen
% Irregular (listed in data/verbs.exceptions.tsv): doen, ginn, hunn, liesen, schreiwen, sinn, sot, stoen, wetten, wëssen
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
