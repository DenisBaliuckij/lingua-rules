% rules/dto/verbs.lp
% Tommo So verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7397: A Grammar of Tommo So: Dogon Language Family, Mali (2011), pages 73, 74, 79, 80, 81, 235, 236, 269, 270, 303, 416, 417
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   jb_type                      jɔ̀bɔ́
%   b_type                       ɛ́bɛ́
%   goo_type                     gòó
%   yoo_type                     yóó
%   kana_type                    káná
%   grl_type                     gɔ̀rɔ́lɔ́
%   kilm_type                    kílɛ́mɔ́
%   jaa_nda_type                 jàà-ndá
% Irregular (listed in data/verbs.exceptions.tsv): gɛ̀
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
