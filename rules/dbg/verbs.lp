% rules/dbg/verbs.lp
% Dogul Dom verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296321: A Grammar of Dogul Dom (2012), pages 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 200, 201, 206, 207, 208, 211, 212, 213
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   atr                          bùndé, yògùré — grammar: "σσ [+atr]"
%   atr_2                        gèé — grammar: "σ [+atr]"
%   atr_3                        jÈÉ — grammar: "σ [−atr]"
%   atr_4                        ÈbÉ — grammar: "σσ [−atr]"
%   atr_5                        tı̀mbùrÉ — grammar: "σσσ [−atr]"
%   atr_6                        yègòré — grammar: "σσσ [+atr]"
%   ebe_type                     ebe
%   gee_type                     gée
%   timbu_type                   timbu
%   bunde_type                   buńde
%   tmbura_type                  tı̀mbura
%   yegoraa_type                 yègòraa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
