% rules/guk/adjectives.lp
% Gumuz adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296277: A Grammar of Northern and Southern Gumuz (2012), pages 136
%   doc 296322: A grammar of Gaahmg: A Nilo-Saharan Language of Sudan (2011), pages 53, 125, 157, 186, 198, 202, 217, 229, 230, 232, 233, 237, 240, 252, 257, 270, 271, 272, 273
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   cuu_type                     cúú
%   dml_type                     dɔ́mɔ̄l
%   fuui_type                    fūùì
%   kar_type                     kár
%   lusu_type                    lūsú
%   yaa_type                     yáá
%   a_type                       áɛ̀
%   ii_type                      íì
%   n_type                       ə́n
% Irregular (listed in data/adjectives.exceptions.tsv): dāàn, fāā, kàráább, mādā, mūús, pārrās, wɛ᷇dá̪
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
