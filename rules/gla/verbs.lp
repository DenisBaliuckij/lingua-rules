% rules/gla/verbs.lp
% Scottish Gaelic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79404: Forbes's Double Grammar of English and Gaelic / Gramar Dùbailt Beurla 'us Gàelig (1843), pages 52, 64, 67, 71, 72, 76, 79, 82, 83, 87, 88, 89, 97, 103, 124, 125, 140, 143, 144, 150, 151
%   doc 388654: Scottish Gaelic (2010), pages 27, 28, 29, 31, 32, 35, 36, 39, 43, 44
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   beir_type                    beir
%   bris_type                    bris
%   caidil_type                  caidil
%   cuir_type                    cuir
%   gabh_type                    gabh
%   sgriobh_type                 sgriobh
%   tha_type                     tha
%   toisich_type                 tòisich
%   buail_type                   buail
%   emphatic_contrastive_suffixes chanainn-sa — grammar: "emphatic-contrastive suffixes"
%   creach_type                  creach
%   giulain_type                 giùlain
%   lub_type                     lùb
%   toisich_type_2               toisich
%   duisg_type                   dùisg
%   fan_type                     fan
%   fuin_type                    fuin
%   guidh_type                   guidh
%   defective_verbs              may — grammar: "Defective Verbs"
%   seall_type                   seall
%   ol_type                      òl
% Irregular (listed in data/verbs.exceptions.tsv): bi, dèan, faic, is
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
