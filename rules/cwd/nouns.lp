% rules/cwd/nouns.lp
% Woods Cree nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15416: Beginning Cree: Mâci-nêhiyawêwin (2012), pages 13, 25, 100, 101, 129, 136, 175, 184
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   nikosis_type                 nikosis
%   nitisan_type                 nîtisân
%   nosisim_type                 nôsisim
%   viis                         mikiskohk — grammar: "VIIs"
%   viis_2                       miyoskamik — grammar: "VIIs"
%   viis_3                       nîpinohk, piponohk, sîkwanohk — grammar: "VIIs"
%   viis_4                       takwâkohk — grammar: "VIIs"
%   awasis_type                  awâsis
%   ohkomimaw_type               ohkomimâw
%   ohtawimaw_type               ohtâwîmâw
%   okosisimaw_type              okosisimâw, omisimâw, omosômimâw, ostêsimâw ...
%   okawimaw_type                okâwîmâw
%   osimimaw_type                osîmimâw
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
