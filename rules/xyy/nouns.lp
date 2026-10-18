% rules/xyy/nouns.lp
% Yorta Yorta nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 290022: The Yorta Yorta (Bangerang) Language of the Murray Goulburn Including Yabula Yabula (1999), pages 73, 74, 77, 78, 81, 86, 87, 105, 106, 107, 108, 164, 165
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   batja_type                   batja
%   bawo_type                    bawo
%   yiyirr_type                  yiyirr
%   butjanga_type                butjanga
%   dajpa_type                   dajpa
%   dirra_type                   dirra
%   djirrtjirra_type             djirrtjirra
%   duta_type                    duta
%   marai_type                   marai
% Irregular (listed in data/nouns.exceptions.tsv): winyarr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
