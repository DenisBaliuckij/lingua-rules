% rules/lat/nouns.lp
% Latin nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 849014: Ioannis Despauterii Universal grammatica multo quam antehac emaculatior : cum doctissimis  (n.d.), pages 84, 85, 106, 156, 213, 269, 276, 279, 302, 307
%   doc 849025: Grammatica Ioannis Despauterii : prima pars grammatice Joannis Despauterii ... (1540), pages 29, 64, 74, 189, 434, 442, 443
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   scamnum_type                 Scamnum
%   iurisperitus_type            Iurisperitus
%   cymbalista_type              cymbalista
%   fambucista_type              fambucista
%   poeta_type                   poeta
%   psaltis_type                 psaltis
%   rex_type                     rex
%   tympanista_type              tympanista
% Irregular (listed in data/nouns.exceptions.tsv): Bos
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
