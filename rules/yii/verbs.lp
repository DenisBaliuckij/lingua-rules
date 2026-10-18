% rules/yii/verbs.lp
% Yidiny verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 94522: A Grammar of Yidiny (1977), pages 81, 101, 108, 155, 192, 193, 211, 222, 236, 240, 242, 247
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   l_conjugation_comitative     bayga-x — grammar: "-l conjugation comitative"
%   d_i_n_stems                  baga-l — grammar: "-:d,i-n stems"
%   d_i_n_stems_2                buga-n — grammar: "-:d,i-n stems"
%   l_conjugation                wawa-l — grammar: "-l conjugation"
%   l_conjugation_2              binarrja-l — grammar: "-l conjugation"
%   n_conjugation                gali-n — grammar: "-n conjugation"
%   l_conjugation_comitative_2   mad — grammar: "-l conjugation comitative"
%   n_conjugation_2              madjinda-n — grammar: "-n conjugation"
%   x_conjugation                bada-x — grammar: "-x conjugation"
%   d_i_n_stems_3                wuyaba-n — grammar: "-:d,i-n stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
