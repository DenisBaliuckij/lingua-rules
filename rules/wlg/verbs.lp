% rules/wlg/verbs.lp
% Kunbarlang verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 99824: A Grammar of Kunbarlang (2021), pages 97, 306, 308, 311
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   bingki_type                  bingki
%   birrinja_type                birrinja
%   djin_type                    djin
%   ka_type                      ka
%   kali_type                    kali
%   kanj_type                    kanj
%   kelbungu_type                kelbungu
%   ngadjbe_type                 ngadjbe
%   ngale_type                   ngale
%   ngundje_type                 ngundje
%   ngunga_type                  ngunga
%   rdam_type                    rdam
%   rduka_type                   rduka
%   rlakka_type                  rlakka
%   yurrbungu_type               yurrbungu
%   pu_type                      pu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
