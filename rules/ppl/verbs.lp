% rules/ppl/verbs.lp
% Náhuat verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 53557: The Pipil Language of El Salvador (2006), pages 68, 69, 82
%   doc 388504: Curso de Gramática Náhuat basado en el texto del Yankwik Sentaketzat (2014), pages 106, 144, 146, 231, 235, 237, 240, 241, 246, 254, 256, 285, 293, 300, 308, 311, 317
%   doc 388506: Timumachtikan! Curso de lengua náhuat para principiantes adultos (2011), pages 54, 57, 93, 99, 105, 106, 119, 152, 153
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   chulua_type                  chulua
%   clase_i                      kisa, kalaki, tepewa — grammar: "clase I"
%   clase_iv_temua               temua — grammar: "clase IV (-temua)"
%   segunda_clase                panu, istaya, tiltia, sutawa — grammar: "segunda clase"
%   chuka_type                   chuka, ajsi
%   verbos_regulares             machtia — grammar: "verbos regulares"
%   verbos_regulares_2           nutza — grammar: "verbos regulares"
%   kuchi_type                   kuchi
%   tekiti_type                  tekiti, tepewi
%   al_wika_type                 al-wika
%   kajsi_type                   kajsi
%   clase_i_2                    pia — grammar: "clase I"
%   clase_iv_talia               talia — grammar: "clase IV (-talia)"
%   clase_iv                     ishtilia, namiktia, neshtia, pakilia ... — grammar: "clase IV"
%   clase_iv_2                   miktia — grammar: "clase IV"
%   yekawi_type                  yekawi
%   clase_ii                     kwalani — grammar: "Clase II"
%   clase_iii                    tapana — grammar: "Clase III"
%   clase_i_3                    tawana — grammar: "Clase I"
%   verbos_regulares_3           weli — grammar: "verbos regulares"
%   clase_i_4                    pua — grammar: "clase I"
%   clase_i_5                    suma — grammar: "clase I"
%   chita_type                   chita
%   ja_type                      ja
%   kal_type                     kal
%   class_ii                     ahsi — grammar: "Class II"
%   class_i                      chiwa — grammar: "Class I"
%   class_ii_2                   chu:ka — grammar: "Class II"
%   class_i_2                    ki:sa — grammar: "Class I"
%   class_i_3                    na:miki — grammar: "Class I"
%   class_iii                    sa:lua — grammar: "Class III"
% Irregular (listed in data/verbs.exceptions.tsv): kwa, kwi, witz, yawi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
