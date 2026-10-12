% rules/fi/nouns.lp
% Finnish noun inflection: 12 cases x 2 numbers (features: case, number).
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned an
% inflection class with noun_class/2; a lemma without a class produces no
% forms. Classes (genitive sg, partitive sg, illative sg / partitive pl):
%   back_o        talo    -> talon, taloa, taloon / taloja
%   back_u        aamu    -> aamun, aamua, aamuun / aamuja
%   front_y       pöly    -> pölyn, pölyä, pölyyn / pölyjä
%   front_ae      kynä    -> kynän, kynää, kynään / kyniä       (ä -> i)
%   back_a_o      kala    -> kalan, kalaa, kalaan / kaloja      (a -> o)
%   back_a_i      koira   -> koiran, koiraa, koiraan / koiria   (a -> i)
%   long_back_a   maa     -> maan, maata, maahan / maita
%   long_back_u   puu     -> puun, puuta, puuhun / puita
%   long_front_ae pää     -> pään, päätä, päähän / päitä
%   nen_back      nainen  -> naisen, naista, naiseen / naisia
%   nen_front     ihminen -> ihmisen, ihmistä, ihmiseen / ihmisiä
%   e_stem_back   ovi     -> oven, ovea, oveen / ovia
%   e_stem_front  kivi    -> kiven, kiveä, kiveen / kiviä
%   i_loan_back   bussi   -> bussin, bussia, bussiin / busseja
%   i_loan_front  keksi   -> keksin, keksiä, keksiin / keksejä
% None of these classes has consonant gradation; nouns with gradation or other
% stem changes (katu/kadun, käsi/käden, mies/miehen) are listed as irregular.
% The accusative equals the genitive in the singular and the nominative in the
% plural (for every noun, including irregular ones).
% Data (rules/fi/data/): nouns.lexicon.tsv (noun_class per lemma),
% nouns.exceptions.tsv (irregular nouns, all forms except the accusative).
%
% Not covered: comitative, abessive and instructive; possessive suffixes;
% clitics; consonant gradation as a rule.

% --- back_o
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=partitive;number=singular", @suffix(L, "a")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=illative;number=singular", @suffix(L, "on")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=genitive;number=plural", @suffix(L, "jen")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=partitive;number=plural", @suffix(L, "ja")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=inessive;number=plural", @suffix(L, "issa")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=elative;number=plural", @suffix(L, "ista")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=illative;number=plural", @suffix(L, "ihin")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=adessive;number=plural", @suffix(L, "illa")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=ablative;number=plural", @suffix(L, "ilta")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=allative;number=plural", @suffix(L, "ille")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=essive;number=plural", @suffix(L, "ina")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=translative;number=plural", @suffix(L, "iksi")) :- input_lemma(L), noun_class(L, back_o).

% --- back_u
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=partitive;number=singular", @suffix(L, "a")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=illative;number=singular", @suffix(L, "un")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=genitive;number=plural", @suffix(L, "jen")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=partitive;number=plural", @suffix(L, "ja")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=inessive;number=plural", @suffix(L, "issa")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=elative;number=plural", @suffix(L, "ista")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=illative;number=plural", @suffix(L, "ihin")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=adessive;number=plural", @suffix(L, "illa")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=ablative;number=plural", @suffix(L, "ilta")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=allative;number=plural", @suffix(L, "ille")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=essive;number=plural", @suffix(L, "ina")) :- input_lemma(L), noun_class(L, back_u).
form(L, "case=translative;number=plural", @suffix(L, "iksi")) :- input_lemma(L), noun_class(L, back_u).

% --- front_y
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=partitive;number=singular", @suffix(L, "ä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=inessive;number=singular", @suffix(L, "ssä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=elative;number=singular", @suffix(L, "stä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=illative;number=singular", @suffix(L, "yn")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=adessive;number=singular", @suffix(L, "llä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=ablative;number=singular", @suffix(L, "ltä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=essive;number=singular", @suffix(L, "nä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=genitive;number=plural", @suffix(L, "jen")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=partitive;number=plural", @suffix(L, "jä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=inessive;number=plural", @suffix(L, "issä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=elative;number=plural", @suffix(L, "istä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=illative;number=plural", @suffix(L, "ihin")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=adessive;number=plural", @suffix(L, "illä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=ablative;number=plural", @suffix(L, "iltä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=allative;number=plural", @suffix(L, "ille")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=essive;number=plural", @suffix(L, "inä")) :- input_lemma(L), noun_class(L, front_y).
form(L, "case=translative;number=plural", @suffix(L, "iksi")) :- input_lemma(L), noun_class(L, front_y).

% --- front_ae
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=partitive;number=singular", @suffix(L, "ä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=inessive;number=singular", @suffix(L, "ssä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=elative;number=singular", @suffix(L, "stä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=illative;number=singular", @suffix(L, "än")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=adessive;number=singular", @suffix(L, "llä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=ablative;number=singular", @suffix(L, "ltä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=essive;number=singular", @suffix(L, "nä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "iä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "istä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "iin")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "iltä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "inä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, front_ae).

% --- back_a_o
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=partitive;number=singular", @suffix(L, "a")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=illative;number=singular", @suffix(L, "an")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ojen")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "oja")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "oissa")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "oista")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "oihin")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "oilla")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "oilta")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "oille")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "oina")) :- input_lemma(L), noun_class(L, back_a_o).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "oiksi")) :- input_lemma(L), noun_class(L, back_a_o).

% --- back_a_i
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=partitive;number=singular", @suffix(L, "a")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=illative;number=singular", @suffix(L, "an")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "ia")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issa")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "ista")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "iin")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illa")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "ilta")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "ina")) :- input_lemma(L), noun_class(L, back_a_i).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, back_a_i).

% --- long_back_a
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=partitive;number=singular", @suffix(L, "ta")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=illative;number=singular", @suffix(L, "han")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "iden")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "ita")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issa")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "ista")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "ihin")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illa")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "ilta")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "ina")) :- input_lemma(L), noun_class(L, long_back_a).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, long_back_a).

% --- long_back_u
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=partitive;number=singular", @suffix(L, "ta")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=illative;number=singular", @suffix(L, "hun")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "iden")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "ita")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issa")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "ista")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "ihin")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illa")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "ilta")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "ina")) :- input_lemma(L), noun_class(L, long_back_u).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, long_back_u).

% --- long_front_ae
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=partitive;number=singular", @suffix(L, "tä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=inessive;number=singular", @suffix(L, "ssä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=elative;number=singular", @suffix(L, "stä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=illative;number=singular", @suffix(L, "hän")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=adessive;number=singular", @suffix(L, "llä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=ablative;number=singular", @suffix(L, "ltä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=essive;number=singular", @suffix(L, "nä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "iden")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "itä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "istä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "ihin")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "iltä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "inä")) :- input_lemma(L), noun_class(L, long_front_ae).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, long_front_ae).

% --- nen_back
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 3, "sen")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=partitive;number=singular", @strip_suffix_add(L, 3, "sta")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=inessive;number=singular", @strip_suffix_add(L, 3, "sessa")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=elative;number=singular", @strip_suffix_add(L, 3, "sesta")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=illative;number=singular", @strip_suffix_add(L, 3, "seen")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=adessive;number=singular", @strip_suffix_add(L, 3, "sella")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=ablative;number=singular", @strip_suffix_add(L, 3, "selta")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=allative;number=singular", @strip_suffix_add(L, 3, "selle")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=essive;number=singular", @strip_suffix_add(L, 3, "sena")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=translative;number=singular", @strip_suffix_add(L, 3, "seksi")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 3, "set")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 3, "sten")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 3, "sia")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 3, "sissa")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 3, "sista")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 3, "siin")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 3, "silla")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 3, "silta")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 3, "sille")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 3, "sina")) :- input_lemma(L), noun_class(L, nen_back).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 3, "siksi")) :- input_lemma(L), noun_class(L, nen_back).

% --- nen_front
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 3, "sen")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=partitive;number=singular", @strip_suffix_add(L, 3, "stä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=inessive;number=singular", @strip_suffix_add(L, 3, "sessä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=elative;number=singular", @strip_suffix_add(L, 3, "sestä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=illative;number=singular", @strip_suffix_add(L, 3, "seen")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=adessive;number=singular", @strip_suffix_add(L, 3, "sellä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=ablative;number=singular", @strip_suffix_add(L, 3, "seltä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=allative;number=singular", @strip_suffix_add(L, 3, "selle")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=essive;number=singular", @strip_suffix_add(L, 3, "senä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=translative;number=singular", @strip_suffix_add(L, 3, "seksi")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 3, "set")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 3, "sten")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 3, "siä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 3, "sissä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 3, "sistä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 3, "siin")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 3, "sillä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 3, "siltä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 3, "sille")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 3, "sinä")) :- input_lemma(L), noun_class(L, nen_front).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 3, "siksi")) :- input_lemma(L), noun_class(L, nen_front).

% --- e_stem_back
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "en")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=partitive;number=singular", @strip_suffix_add(L, 1, "ea")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=inessive;number=singular", @strip_suffix_add(L, 1, "essa")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=elative;number=singular", @strip_suffix_add(L, 1, "esta")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=illative;number=singular", @strip_suffix_add(L, 1, "een")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=adessive;number=singular", @strip_suffix_add(L, 1, "ella")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=ablative;number=singular", @strip_suffix_add(L, 1, "elta")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=allative;number=singular", @strip_suffix_add(L, 1, "elle")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=essive;number=singular", @strip_suffix_add(L, 1, "ena")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=translative;number=singular", @strip_suffix_add(L, 1, "eksi")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "et")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "ia")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issa")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "ista")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "iin")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illa")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "ilta")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "ina")) :- input_lemma(L), noun_class(L, e_stem_back).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, e_stem_back).

% --- e_stem_front
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "en")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=partitive;number=singular", @strip_suffix_add(L, 1, "eä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=inessive;number=singular", @strip_suffix_add(L, 1, "essä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=elative;number=singular", @strip_suffix_add(L, 1, "estä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=illative;number=singular", @strip_suffix_add(L, 1, "een")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=adessive;number=singular", @strip_suffix_add(L, 1, "ellä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=ablative;number=singular", @strip_suffix_add(L, 1, "eltä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=allative;number=singular", @strip_suffix_add(L, 1, "elle")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=essive;number=singular", @strip_suffix_add(L, 1, "enä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=translative;number=singular", @strip_suffix_add(L, 1, "eksi")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "et")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "iä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "istä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "iin")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "iltä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "inä")) :- input_lemma(L), noun_class(L, e_stem_front).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, e_stem_front).

% --- i_loan_back
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=partitive;number=singular", @suffix(L, "a")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=illative;number=singular", @suffix(L, "in")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "eja")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "eissa")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "eista")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "eihin")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "eilla")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "eilta")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "eille")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "eina")) :- input_lemma(L), noun_class(L, i_loan_back).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "eiksi")) :- input_lemma(L), noun_class(L, i_loan_back).

% --- i_loan_front
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=partitive;number=singular", @suffix(L, "ä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=inessive;number=singular", @suffix(L, "ssä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=elative;number=singular", @suffix(L, "stä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=illative;number=singular", @suffix(L, "in")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=adessive;number=singular", @suffix(L, "llä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=ablative;number=singular", @suffix(L, "ltä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=essive;number=singular", @suffix(L, "nä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "ejä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "eissä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "eistä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "eihin")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "eillä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "eiltä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "eille")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "einä")) :- input_lemma(L), noun_class(L, i_loan_front).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "eiksi")) :- input_lemma(L), noun_class(L, i_loan_front).

% --- accusative (all nouns)
form(L, "case=accusative;number=singular", F) :- input_lemma(L), form(L, "case=genitive;number=singular", F).
form(L, "case=accusative;number=plural", F) :- input_lemma(L), form(L, "case=nominative;number=plural", F).
