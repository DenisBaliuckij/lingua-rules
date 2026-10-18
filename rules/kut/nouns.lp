% rules/kut/nouns.lp
% Kutenai nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16457: Grammar of the Kutenai Language (1926), pages 33, 50, 69
%   doc 852562: Linguae ksanka (Kootenai) elementa grammaticae (1870), pages 51
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   nasukwin_s_type              Nasukwin-s
%   akaltam_type                 akaltam
%   nasukwinintik_type           nasukwinintik
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
