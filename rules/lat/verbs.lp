% rules/lat/verbs.lp
% Latin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 849014: Ioannis Despauterii Universal grammatica multo quam antehac emaculatior : cum doctissimis  (n.d.), pages 84, 85, 106, 156, 213, 269, 276, 279, 302, 307
%   doc 849025: Grammatica Ioannis Despauterii : prima pars grammatice Joannis Despauterii ... (1540), pages 29, 64, 74, 189, 434, 442, 443
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   inquio_type                  inquio
%   tertia_conjugationis         abdo — grammar: "Tertia conjugationis"
%   addo_type                    addo, condo, credo
%   c4_konjugation               audio, texo — grammar: "4. Konjugation"
%   faro_type                    faro
%   icio_type                    icio
%   preterito_perfecto_en_i_raiz_duplicada parco — grammar: "pretérito perfecto en -i; raíz duplicada"
%   tertia_conjugationis_2       pertendo, portendo, praetendo, protendo ... — grammar: "Tertia conjugationis"
%   addisco_type                 addisco, condisco, dedisco
%   tercera_conjugacion          arguo, statuo — grammar: "tercera conjugación"
%   auo_type                     auo
%   compesco_type                compesco, dispesco
%   third_conjugation_ere        constituo, destituo, instituo, praestituo ... — grammar: "third conjugation (-ere)"
%   depoposco_type               depoposco, expoposco
%   duco_type                    duco
%   exaudio_type                 exaudio
%   quarta_coniugatione          nexo — grammar: "quarta coniugatione"
%   repoposco_type               repoposco
%   vinco_type                   vinco
%   accerfo_type                 accerfo
%   apago_type                   apago
%   arceffo_type                 arceffo
%   quarta_coniugatione_2        caluo — grammar: "quarta coniugatione"
%   capeffo_type                 capeffo
%   cedo_type                    cedo
%   conquinisco_type             conquinisco
%   dico_type                    dico
%   differo_type                 differo
%   faceffo_type                 faceffo
%   inceffo_type                 inceffo
%   infero_type                  infero
%   interfero_type               interfero
%   laceffo_type                 laceffo
%   pinfo_type                   pinfo
% Irregular (listed in data/verbs.exceptions.tsv): discere, fero
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
