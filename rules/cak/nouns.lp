% rules/cak/nouns.lp
% Kaqchikel nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79656: Rukem ik ri kaqchikel chi' / Gramática Kaqchikel (2001), pages 79, 94, 96, 101, 184, 195, 243, 244
%   doc 289495: A Grammar of the Cakchiquel Language of Guatemala (1884), pages 27, 29, 30, 36, 37, 38, 39, 40, 41, 43, 44
%   doc 289497: Supplementary Remarks to the Grammar of the Cakchiquel Language of Guatemala, Edited by D. (1885), pages 13
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   quxil_type                   Q’uxíl
%   achi_type                    achí
%   ajtison_type                 ajt’ison
%   ajxul_type                   ajxul
%   ajaw_type                    ajäw
%   akwal_type                   ak’wal
%   ixoq_type                    ixoq
%   ixtan_type                   ixtän
%   kexelom_type                 k’exelom
%   mama_type                    mama
%   qoe_type                     q’OE
%   qeq_type                     q’eq
%   tikonel_type                 tikonel
%   xajoi_type                   xajoi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
