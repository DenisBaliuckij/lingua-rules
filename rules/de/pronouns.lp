% rules/de/pronouns.lp
% German personal pronouns (features: case, number). The lemma is the
% nominative; "sie" has a singular (she) and a plural (they) paradigm, "Sie" is
% the formal address. Every form is listed.

form("ich", "case=nominative;number=singular", "ich"). form("ich", "case=accusative;number=singular", "mich"). form("ich", "case=dative;number=singular", "mir"). form("ich", "case=genitive;number=singular", "meiner").
form("du", "case=nominative;number=singular", "du"). form("du", "case=accusative;number=singular", "dich"). form("du", "case=dative;number=singular", "dir"). form("du", "case=genitive;number=singular", "deiner").
form("er", "case=nominative;number=singular", "er"). form("er", "case=accusative;number=singular", "ihn"). form("er", "case=dative;number=singular", "ihm"). form("er", "case=genitive;number=singular", "seiner").
form("sie", "case=nominative;number=singular", "sie"). form("sie", "case=accusative;number=singular", "sie"). form("sie", "case=dative;number=singular", "ihr"). form("sie", "case=genitive;number=singular", "ihrer").
form("es", "case=nominative;number=singular", "es"). form("es", "case=accusative;number=singular", "es"). form("es", "case=dative;number=singular", "ihm"). form("es", "case=genitive;number=singular", "seiner").
form("wir", "case=nominative;number=plural", "wir"). form("wir", "case=accusative;number=plural", "uns"). form("wir", "case=dative;number=plural", "uns"). form("wir", "case=genitive;number=plural", "unser").
form("ihr", "case=nominative;number=plural", "ihr"). form("ihr", "case=accusative;number=plural", "euch"). form("ihr", "case=dative;number=plural", "euch"). form("ihr", "case=genitive;number=plural", "euer").
form("sie", "case=nominative;number=plural", "sie"). form("sie", "case=accusative;number=plural", "sie"). form("sie", "case=dative;number=plural", "ihnen"). form("sie", "case=genitive;number=plural", "ihrer").
form("Sie", "case=nominative;number=plural", "Sie"). form("Sie", "case=accusative;number=plural", "Sie"). form("Sie", "case=dative;number=plural", "Ihnen"). form("Sie", "case=genitive;number=plural", "Ihrer").
