% rules/par/nouns.lp
% Panamint Shoshone nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 476031: Tümpisa (Panamint) Shoshone Grammar (1989), pages 88, 145, 147, 148, 152, 195, 234, 235, 236
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   regular_noun                 hipittsittsi, kapaayu — grammar: "regular noun"
%   regular_noun_2               pahamittsi — grammar: "regular noun"
%   reduplicative_noun_declensions petu — grammar: "REDUPLICATIVE NOUN DECLENSIONS"
%   regular_noun_3               tso — grammar: "regular noun"
%   reduplicative_noun_declensions_2 tua — grammar: "REDUPLICATIVE NOUN DECLENSIONS"
%   regular_noun_4               tuinuppu — grammar: "regular noun"
%   papi_type                    papi
%   patsi_type                   patsi
%   tokkwapii_type               tokkwapii
%   etun_type                    etun
%   puhakantun_type              puhakantun
%   wayantun_type                wayantun
%   yutsutun_type                yutsutun
% Irregular (listed in data/nouns.exceptions.tsv): tangummii, wa'ippu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
