% rules/ilo/verbs.lp
% ilo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 898253: Gramática ilocana (n.d.), pages 27, 43, 138, 139, 174
%   doc 898260: Grammatische Skizze der Ilocano-Sprache : mit Berücksichtigung ihrer Beziehungen zu den an (1904), pages 61, 84
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   surat_type                   súrat
%   agaramid_type                agaramid
%   annugut_type                 annugút
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
