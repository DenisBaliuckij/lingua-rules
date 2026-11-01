% rules/cld/adjectives.lp
% Aramaic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389758: The Jewish Neo-Aramaic Dialect of Amәdya (2011), pages 71, 72, 107, 109, 113, 135, 139, 151, 197, 200, 201, 237, 243
%   doc 389764: The Neo-Aramaic Dialect of Alqosh (2003), pages 133, 186, 193, 194, 207, 209, 210, 284, 287, 288, 289, 293, 294, 306
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   balaka_type                  balaka
%   karra_type                   karra
%   kacala_type                  kačala
%   randa_type                   randa
%   rezbara_type                 režbara
%   zarqa_type                   zarqa
%   sella_type                   šella
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
