% rules/arc/verbs.lp
% Biblical Aramaic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 67205: Grammatik der biblisch-chaldäischen Sprache und des Idioms des Thalmud Babli (1873), pages 21, 22, 23, 32, 36, 37, 38, 39, 40, 42, 46, 48, 49, 50
%   doc 851861: A Short Grammar of Biblical Aramaic (n.d.), pages 22, 25, 26, 34, 36, 38, 46, 52, 103, 104, 106
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   regular_strong_verb          ana — grammar: "Regular (Strong) Verb"
%   conjugation_der_form         התקטל — grammar: "Conjugation der Form התפעל"
%   form                         הקטל — grammar: "Form הפעל"
%   form_2                       קטל — grammar: "Form פעל"
%   pael                         an? — grammar: "Pael"
%   verba_mit_quiescirendem_zweiten_stammbuc קום — grammar: "Verba mit quiescirendem zweiten Stammbuchstaben (Vau)"
%   hithpaal                     anann — grammar: "Hithpaal"
%   verba_mit_quiescirendem_dritten_stammbuc בנה — grammar: "Verba mit quiescirendem dritten Stammbuchstaben"
%   verba_mit_quiescirende_11_dritten_stammb צלי — grammar: "Verba mit quiescirende 11 dritten Stammbuchstaben"
%   stative_perfect              anp — grammar: "Stative Perfect"
%   conjugation_der_form_oder    קהל — grammar: "Conjugation der Form קהל oder קל"
%   verba_mit_quiescirendem_letzte_ii_stammb דגלי — grammar: "Verba mit quiescirendem letzte II Stammbuchstaben"
%   peal_passive_participle_of_the_regular_s tto — grammar: "Peal Passive Participle of the regular (strong) verb"
%   verba_mit_quiescirendem_letztem_stammbuc לסמי — grammar: "Verba mit quiescirendem letztem Stammbuchstaben"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
