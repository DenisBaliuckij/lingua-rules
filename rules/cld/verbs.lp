% rules/cld/verbs.lp
% Aramaic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389758: The Jewish Neo-Aramaic Dialect of Amәdya (2011), pages 71, 72, 107, 109, 113, 135, 139, 151, 197, 200, 201, 237, 243
%   doc 389764: The Neo-Aramaic Dialect of Alqosh (2003), pages 133, 186, 193, 194, 207, 209, 210, 284, 287, 288, 289, 293, 294, 306
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   y_s_type                     y-š
%   nasn_type                    našәn
%   satn_type                    šatәn
%   kosn_type                    košәn
%   losn_type                    lošәn
%   ptaweli_type                 ptāwēli
%   welleb_type                  wellēb
%   welleli_type                 wellēli
%   negative_past_copula         lá-wēwa — grammar: "negative past copula"
%   negative_present_copula      lε — grammar: "negative present copula"
%   m_r_type                     m-r-ʾ
%   qatl_type                    qaṭl
%   deictic_copula               wē — grammar: "deictic copula"
%   lwsli_type                   lwәšli
%   mqods_type                   mqodә́š
%   plupreterite                 qtә́l — grammar: "Plupreterite"
%   s_t_h_r_type                 š-t-h-r
%   s_t_h_y_type                 š-t-h-y
% Irregular (listed in data/verbs.exceptions.tsv): zāle
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
