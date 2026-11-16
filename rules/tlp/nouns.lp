% rules/tlp/nouns.lp
% Filomeno Mata Totonac nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38380: The phonology and morphology of Filomeno Mata Totonac (2009), pages 96, 99, 207
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   tiilan_type                  #tíilan
%   tumin_type                   túmin
%   agentive_plural_nouns        laataamaaná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_2      maqniiná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_3      pas"iiná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_4      qa#aaná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_5      s"apaná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_6      s"wakná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_7      saqná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_8      staaná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_9      tlaqná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_10     tsapaná'a& — grammar: "agentive plural nouns"
%   agentive_plural_nouns_11     tsoqnú'u& — grammar: "agentive plural nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
