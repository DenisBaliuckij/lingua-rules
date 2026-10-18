% rules/mfi/nouns.lp
% Wandala nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68400: A Grammar of Wandala (2012), pages 120, 225
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   bre_type                     brè
%   duksa_type                   dùksà
%   gwe_type                     gwé
%   gyale_type                   gyálè
%   kimake_type                  kímàkè
%   male_type                    màlè
%   sawari_type                  sàwárì
%   turmi_type                   turmi
%   zwa_type                     zə̀ŋwà
%   gdzre_type                   ə́gdzrè
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
