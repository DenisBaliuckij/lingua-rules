% rules/prm/verbs.lp
% Kibiri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 104510: Grammatica della lingua indostana o urdù (1892), pages 62, 66, 89, 90
%   doc 105569: Études sur la langue magyare: Essai de grammaire hongroise (1850), pages 34, 77, 78, 83, 84, 96, 97, 109, 110, 111, 113, 124, 125, 126, 127, 129, 131, 139, 140, 141, 142, 146, 149
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verbes_a_voyelle_grave       várni — grammar: "verbes à voyelle grave"
%   tepni_type                   tépni
%   potentiel_efficient          irathatni — grammar: "Potentiel-efficient"
%   potentiel_efficient_2        kerehetni — grammar: "Potentiel-efficient"
%   verbes_composes              visszaadni — grammar: "verbes composés"
%   vesz_type                    vesz
%   visz_type                    visz
%   szo_type                     sző
%   alapodni_type                alapodni, foganodni
%   alkudni_type                 alkudni, aludni
%   betegedni_type               betegedni
%   cselekedni_type              cselekedni
%   fekudni_type                 feküdni
%   eskudni_type                 esküdni
%   haragudni_type               haragudni
%   potentiel                    irhatni — grammar: "potentiel"
%   jojj_type                    jöjj
%   potentiel_2                  szerethetni — grammar: "potentiel"
%   foni_type                    föni
%   hinni_type                   hinni
%   keresni_type                 keresni
%   kerni_type                   kérni
%   megtartoztatni_type          megtartóztatni
%   szeretni_type                szeretni
%   hini_type                    híni
%   menj_type                    menj
% Irregular (listed in data/verbs.exceptions.tsv): denā, gat, hajila, lena, lenni, maraa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
