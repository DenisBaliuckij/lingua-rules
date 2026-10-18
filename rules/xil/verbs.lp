% rules/xil/verbs.lp
% Illirian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105613: Grammatica della lingua illirica etc. (1838), pages 106, 114, 118, 119, 120, 121, 123, 124, 130, 131, 134, 135, 140, 146, 147, 148, 150, 155, 156, 176
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   imati_type                   imàti
%   conjugazione_terza_dei_verbi_in_im im — grammar: "Conjugazione terza dei verbi in im"
%   orare_type                   orare
%   mochi_type                   mochi
%   oti_type                     oti
%   verbi_impersonali_di_significazione_pass bitti-se — grammar: "verbi impersonali di significazione passiva"
%   hotiti_type                  hotiti
%   verbi_impersonali_assoluti   daſcdjeti — grammar: "verbi impersonali assoluti"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
