% rules/tbo/nouns.lp
% Tawala nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289582: A grammar of Tawala: An Austronesian language of the Milne Bay area, Papua New Guinea (1997), pages 84, 135, 164, 277, 278
%   doc 289583: Tawala Grammar: A Functional Approach (1991), pages 185
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   body_parts                   guta — grammar: "body parts"
%   body_parts_2                 ae — grammar: "body parts"
%   ae_na_type                   ae-na
%   body_parts_3                 galu — grammar: "body parts"
%   human_reference              hewaJi — grammar: "human reference"
%   body_parts_4                 heya — grammar: "body parts"
%   body_parts_5                 hilili — grammar: "body parts"
%   human_reference_2            hiwape — grammar: "human reference"
%   human_reference_3            keduluma — grammar: "human reference"
%   body_parts_6                 laga — grammar: "body parts"
%   body_parts_7                 ledu — grammar: "body parts"
%   body_parts_8                 lugu — grammar: "body parts"
%   nima_na_type                 nima-na
%   oloto_type                   oloto
%   wawine_type                  wawine
% Irregular (listed in data/nouns.exceptions.tsv): bada, guguhini, tewela, wawme
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
