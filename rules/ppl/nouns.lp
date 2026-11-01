% rules/ppl/nouns.lp
% Náhuat nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 53557: The Pipil Language of El Salvador (2006), pages 68, 69, 82
%   doc 388504: Curso de Gramática Náhuat basado en el texto del Yankwik Sentaketzat (2014), pages 106, 144, 146, 231, 235, 237, 240, 241, 246, 254, 256, 285, 293, 300, 308, 311, 317
%   doc 388506: Timumachtikan! Curso de lengua náhuat para principiantes adultos (2011), pages 54, 57, 93, 99, 105, 106, 119, 152, 153
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   pelu_type                    pelu
%   diminutivos                  amatzin — grammar: "diminutivos"
%   pal_type                     pal, chan, kunew, panpa ...
%   ipan_type                    ipan
%   ishpan_type                  ishpan
%   jpak_type                    jpak
%   mey_type                     mey
%   tech_type                    tech
%   ish_type                     ish
%   noy_type                     noy
%   piltzin_type                 piltzin
%   siwat_type                   siwat
%   tal_type                     tal
%   tamachtiani_type             tamachtiani
%   diminutivos_con_reduplicacion Teut — grammar: "diminutivos con reduplicación"
%   diminutivos_2                amat — grammar: "diminutivos"
%   diminutivos_con_reduplicacion_2 barcoj — grammar: "diminutivos con reduplicación"
%   diminutivos_con_reduplicacion_3 centavoj — grammar: "diminutivos con reduplicación"
%   echkaw_type                  echkaw
%   eltiw_type                   eltiw
%   ikaw_type                    ikaw
%   diminutivos_con_reduplicacion_4 kunet — grammar: "diminutivos con reduplicación"
%   kunpa_type                   kunpa
%   kunpalej_type                kunpalej
%   diminutivos_con_reduplicacion_5 lamaj — grammar: "diminutivos con reduplicación"
%   diminutivos_con_reduplicacion_6 michin — grammar: "diminutivos con reduplicación"
%   pipi_type                    pipi
%   diminutivos_con_reduplicacion_7 pipil — grammar: "diminutivos con reduplicación"
%   taka_type                    taka
%   teku_type                    teku
% Irregular (listed in data/nouns.exceptions.tsv): iknew, siwapil
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
