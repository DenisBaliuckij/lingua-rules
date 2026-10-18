% rules/bap/verbs.lp
% Bantawa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 87: A grammar of Bantawa: Grammar, paradigm tables, glossary and texts of a Rai language of Ea (2009), pages 110, 154, 180, 408, 409, 413, 415, 417, 419, 421, 422, 423
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   tama_type                    tama
%   khanna_type                  kʰanna
%   progressive_paradigms        kʰatnaŋna — grammar: "Progressive paradigms"
%   can_type                     can
%   khat_type                    kʰat
%   khatma_type                  kʰatma
%   khatna_type                  kʰatna
%   cama_type                    cama
%   progressive_paradigms_2      caŋa — grammar: "Progressive paradigms"
%   khannana_type                kʰannaŋna
% Irregular (listed in data/verbs.exceptions.tsv): caha metma
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
