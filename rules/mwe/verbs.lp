% rules/mwe/verbs.lp
% Mwera verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 30147: A Grammar of Mwera (1952), pages 54, 60, 62, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 118, 119, 120, 121, 122, 127
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   copulative_conjugation       wa, nawepiyga — grammar: "Copulative Conjugation"
%   past_continuous              piyga — grammar: "Past Continuous"
%   indefinite_and_continuous    ygunapinga — grammar: "Indefinite and Continuous"
%   gapinja_type                 gapinja
%   ygapinje_type                ygapinje
%   gapiyga_type                 gapiyga
%   middle_future_indefinite     cikambinje — grammar: "Middle Future Indefinite"
%   immediate_past_definite      cikupiyga — grammar: "Immediate Past Definite"
%   immediate_future_indefinite  cimbinje — grammar: "Immediate Future Indefinite"
%   remote_future_indefinite     cinyiepiyga — grammar: "Remote Future Indefinite"
%   remote_past_indefinite       cipiyga — grammar: "Remote Past Indefinite"
%   middle_future_perfect        ciygagonile — grammar: "Middle Future Perfect"
%   immediate_future_perfect     ciyonile — grammar: "Immediate Future Perfect"
%   perfect                      gonile — grammar: "Perfect"
%   definite_and_continuous      likupiyga — grammar: "Definite and Continuous"
%   mbinje_type                  mbinje
%   indefinite_and_continuous_2  nilipiyga — grammar: "Indefinite and Continuous"
%   immediate_past_perfect       pinjile — grammar: "Immediate Past Perfect"
%   present_indefinite           ygapiygaga — grammar: "Present Indefinite"
%   indefinite                   ygukupiyga — grammar: "Indefinite"
%   continuous_and_definite      ygunakupiyga — grammar: "Continuous and Definite"
%   indefinite_2                 ygupiyga — grammar: "Indefinite"
%   immediate_past_indefinite    dpiyga — grammar: "Immediate Past Indefinite"
%   past_indefinite              gacipiyga, gapinjile — grammar: "Past Indefinite"
%   perfect_2                    gagonile — grammar: "Perfect"
%   indefinite_and_continuous_3  galipiyga — grammar: "Indefinite and Continuous"
%   indefinite_and_continuous_4  gandpiyga — grammar: "Indefinite and Continuous"
%   tjgunapinje_type             tjgunapinje
%   definite_and_continuous_2    gandkupiyga — grammar: "Definite and Continuous"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
