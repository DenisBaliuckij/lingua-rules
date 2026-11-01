% rules/ndt/verbs.lp
% Mondunga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3160: Grammaire du Mondunga (Lisala, Congo Belge) (1952), pages 18, 35, 36, 37, 38
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ya_type                      ya
%   futa_type                    futa
%   molo_type                    móló
%   futd_type                    fûtd
%   futaa_type                   futaa
%   molaa_type                   molaa
%   molo_type_2                  molo
%   moloi_type                   moloi
%   memolo_type                  mêmôlô
%   molo_type_3                  môlô
%   yaa_type                     yaa
%   yd_type                      yd
%   ya_type_2                    yâ
%   futai_type                   futai
%   futa_type_2                  fütâ
%   yai_type                     yai
%   yaya_type                    yaya
%   molo_type_4                  möló
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
