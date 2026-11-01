% rules/bel/verbs.lp
% Belarusian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389565: Belorussian (1985), pages 15, 16, 20, 21, 23, 28
%   doc 389567: Fundamentals of Modern Belarusian (2004), pages 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 22, 24, 25, 26, 35, 36, 51, 52, 57, 58, 61, 63
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   first_conjugation            чытаць — grammar: "First conjugation"
%   second_conjugation           гаварыць — grammar: "Second conjugation"
%   second_conjugation_2         ляцець — grammar: "Second conjugation"
%   c2nd_conjugation_verbs       ходзіць, помніць, строіць, робіць — grammar: "2nd Conjugation Verbs"
%   c2nd_conjugation_verbs_2     бачыць — grammar: "2nd Conjugation Verbs"
%   class_type                   жыць, быць, берагчы
%   c2nd_conjugation_verbs_3     стаяць — grammar: "2nd Conjugation Verbs"
%   first_conjugation_2          бегчы, лезці, несці, перці ... — grammar: "First conjugation"
%   class_type_2                 валачы, пячы
%   class_type_3                 класці, красці, сесці
%   class_type_4                 памерці
%   class_type_5                 стрыгчы
%   c2nd_conjugation_verbs_4     таіць — grammar: "2nd Conjugation Verbs"
%   class_type_6                 цвісці
%   class_type_7                 магчы
%   class_type_8                 будаваць
%   class_type_9                 глядзець
%   class_type_10                глянуць
%   class_type_11                крычаць
%   class_type_12                мыцца
%   class_type_13                мыць
%   class_type_14                рабіць
%   class_type_15                сарваць
%   class_type_16                спаць
%   class_type_17                стаць
%   class_type_18                стукнуць
%   class_type_19                сячы
%   class_type_20                чакаць
% Irregular (listed in data/verbs.exceptions.tsv): глухнуць, знікнуць, мерзнуць, пранікнуць, прывыкнуць, сохнуць, узнікнуць
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
