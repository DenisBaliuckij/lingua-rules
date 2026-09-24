% rules/en/pronouns.lp
% English personal pronouns (features: case, number). The lemma is the subject
% form; "you" has both a singular and a plural paradigm (yourself/yourselves).
% Every form is listed; there are no general rules.

% I (singular)
form("I", "case=subject;number=singular", "I").
form("I", "case=object;number=singular", "me").
form("I", "case=possessive_determiner;number=singular", "my").
form("I", "case=possessive_pronoun;number=singular", "mine").
form("I", "case=reflexive;number=singular", "myself").
% you (singular)
form("you", "case=subject;number=singular", "you").
form("you", "case=object;number=singular", "you").
form("you", "case=possessive_determiner;number=singular", "your").
form("you", "case=possessive_pronoun;number=singular", "yours").
form("you", "case=reflexive;number=singular", "yourself").
% you (plural)
form("you", "case=subject;number=plural", "you").
form("you", "case=object;number=plural", "you").
form("you", "case=possessive_determiner;number=plural", "your").
form("you", "case=possessive_pronoun;number=plural", "yours").
form("you", "case=reflexive;number=plural", "yourselves").
% he (singular)
form("he", "case=subject;number=singular", "he").
form("he", "case=object;number=singular", "him").
form("he", "case=possessive_determiner;number=singular", "his").
form("he", "case=possessive_pronoun;number=singular", "his").
form("he", "case=reflexive;number=singular", "himself").
% she (singular)
form("she", "case=subject;number=singular", "she").
form("she", "case=object;number=singular", "her").
form("she", "case=possessive_determiner;number=singular", "her").
form("she", "case=possessive_pronoun;number=singular", "hers").
form("she", "case=reflexive;number=singular", "herself").
% it (singular)
form("it", "case=subject;number=singular", "it").
form("it", "case=object;number=singular", "it").
form("it", "case=possessive_determiner;number=singular", "its").
form("it", "case=possessive_pronoun;number=singular", "its").
form("it", "case=reflexive;number=singular", "itself").
% we (plural)
form("we", "case=subject;number=plural", "we").
form("we", "case=object;number=plural", "us").
form("we", "case=possessive_determiner;number=plural", "our").
form("we", "case=possessive_pronoun;number=plural", "ours").
form("we", "case=reflexive;number=plural", "ourselves").
% they (plural)
form("they", "case=subject;number=plural", "they").
form("they", "case=object;number=plural", "them").
form("they", "case=possessive_determiner;number=plural", "their").
form("they", "case=possessive_pronoun;number=plural", "theirs").
form("they", "case=reflexive;number=plural", "themselves").
