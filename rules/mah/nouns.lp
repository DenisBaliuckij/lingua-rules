% rules/mah/nouns.lp
% Marshallese nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389818: Marshallese Language Training Manual (1992), pages 71, 72, 73
%   doc 389819: Practical Marshallese (2004), pages 20, 22, 23, 24, 26, 36, 96, 112, 124, 130, 140, 142, 144, 152, 156, 158, 172, 174, 202
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   i_stem_inalienable_nouns     add, bxxt, hwil, itt ... — grammar: "i-stem inalienable nouns"
%   a_stem_nouns                 addin, koovin — grammar: "a-stem nouns"
%   ainiki_type                  ainiki
%   a_stem_nouns_2               bcr, et, hctt, jer ... — grammar: "a-stem nouns"
%   bwi_type                     bwi
%   byru_type                    byru
%   s_stem_inalienable_nouns     ipp, mej, tokj, wcf — grammar: "s-stem inalienable nouns"
%   i_stem_inalienable_nouns_2   limo, ritur — grammar: "i-stem inalienable nouns"
%   s_stem_inalienable_nouns_2   jem — grammar: "s-stem inalienable nouns"
% Irregular (listed in data/nouns.exceptions.tsv): di, gi, je, jibw, li, liha, pe, vcha, ve
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
