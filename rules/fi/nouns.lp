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

% --- class membership
noun_class("talo", back_o). noun_class("auto", back_o). noun_class("kello", back_o).
noun_class("aamu", back_u). noun_class("laulu", back_u).
noun_class("pöly", front_y). noun_class("hylly", front_y).
noun_class("kynä", front_ae). noun_class("päivä", front_ae). noun_class("kylä", front_ae).
noun_class("kala", back_a_o). noun_class("sana", back_a_o). noun_class("kirja", back_a_o).
noun_class("koira", back_a_i). noun_class("kuva", back_a_i). noun_class("muna", back_a_i).
noun_class("maa", long_back_a).
noun_class("puu", long_back_u). noun_class("kuu", long_back_u).
noun_class("pää", long_front_ae). noun_class("jää", long_front_ae).
noun_class("nainen", nen_back). noun_class("hevonen", nen_back).
noun_class("ihminen", nen_front).
noun_class("ovi", e_stem_back).
noun_class("kivi", e_stem_front). noun_class("nimi", e_stem_front). noun_class("pilvi", e_stem_front).
noun_class("bussi", i_loan_back). noun_class("kahvi", i_loan_back).
noun_class("keksi", i_loan_front). noun_class("hissi", i_loan_front).

% --- irregular nouns (all forms except the accusative listed)
irregular("vesi").
form("vesi", "case=nominative;number=singular", "vesi"). form("vesi", "case=genitive;number=singular", "veden"). form("vesi", "case=partitive;number=singular", "vettä"). form("vesi", "case=inessive;number=singular", "vedessä"). form("vesi", "case=elative;number=singular", "vedestä"). form("vesi", "case=illative;number=singular", "veteen"). form("vesi", "case=adessive;number=singular", "vedellä"). form("vesi", "case=ablative;number=singular", "vedeltä"). form("vesi", "case=allative;number=singular", "vedelle"). form("vesi", "case=essive;number=singular", "vetenä"). form("vesi", "case=translative;number=singular", "vedeksi").
form("vesi", "case=nominative;number=plural", "vedet"). form("vesi", "case=genitive;number=plural", "vesien"). form("vesi", "case=partitive;number=plural", "vesiä"). form("vesi", "case=inessive;number=plural", "vesissä"). form("vesi", "case=elative;number=plural", "vesistä"). form("vesi", "case=illative;number=plural", "vesiin"). form("vesi", "case=adessive;number=plural", "vesillä"). form("vesi", "case=ablative;number=plural", "vesiltä"). form("vesi", "case=allative;number=plural", "vesille"). form("vesi", "case=essive;number=plural", "vesinä"). form("vesi", "case=translative;number=plural", "vesiksi").
irregular("käsi").
form("käsi", "case=nominative;number=singular", "käsi"). form("käsi", "case=genitive;number=singular", "käden"). form("käsi", "case=partitive;number=singular", "kättä"). form("käsi", "case=inessive;number=singular", "kädessä"). form("käsi", "case=elative;number=singular", "kädestä"). form("käsi", "case=illative;number=singular", "käteen"). form("käsi", "case=adessive;number=singular", "kädellä"). form("käsi", "case=ablative;number=singular", "kädeltä"). form("käsi", "case=allative;number=singular", "kädelle"). form("käsi", "case=essive;number=singular", "kätenä"). form("käsi", "case=translative;number=singular", "kädeksi").
form("käsi", "case=nominative;number=plural", "kädet"). form("käsi", "case=genitive;number=plural", "käsien"). form("käsi", "case=partitive;number=plural", "käsiä"). form("käsi", "case=inessive;number=plural", "käsissä"). form("käsi", "case=elative;number=plural", "käsistä"). form("käsi", "case=illative;number=plural", "käsiin"). form("käsi", "case=adessive;number=plural", "käsillä"). form("käsi", "case=ablative;number=plural", "käsiltä"). form("käsi", "case=allative;number=plural", "käsille"). form("käsi", "case=essive;number=plural", "käsinä"). form("käsi", "case=translative;number=plural", "käsiksi").
irregular("mies").
form("mies", "case=nominative;number=singular", "mies"). form("mies", "case=genitive;number=singular", "miehen"). form("mies", "case=partitive;number=singular", "miestä"). form("mies", "case=inessive;number=singular", "miehessä"). form("mies", "case=elative;number=singular", "miehestä"). form("mies", "case=illative;number=singular", "mieheen"). form("mies", "case=adessive;number=singular", "miehellä"). form("mies", "case=ablative;number=singular", "mieheltä"). form("mies", "case=allative;number=singular", "miehelle"). form("mies", "case=essive;number=singular", "miehenä"). form("mies", "case=translative;number=singular", "mieheksi").
form("mies", "case=nominative;number=plural", "miehet"). form("mies", "case=genitive;number=plural", "miesten"). form("mies", "case=partitive;number=plural", "miehiä"). form("mies", "case=inessive;number=plural", "miehissä"). form("mies", "case=elative;number=plural", "miehistä"). form("mies", "case=illative;number=plural", "miehiin"). form("mies", "case=adessive;number=plural", "miehillä"). form("mies", "case=ablative;number=plural", "miehiltä"). form("mies", "case=allative;number=plural", "miehille"). form("mies", "case=essive;number=plural", "miehinä"). form("mies", "case=translative;number=plural", "miehiksi").
irregular("lapsi").
form("lapsi", "case=nominative;number=singular", "lapsi"). form("lapsi", "case=genitive;number=singular", "lapsen"). form("lapsi", "case=partitive;number=singular", "lasta"). form("lapsi", "case=inessive;number=singular", "lapsessa"). form("lapsi", "case=elative;number=singular", "lapsesta"). form("lapsi", "case=illative;number=singular", "lapseen"). form("lapsi", "case=adessive;number=singular", "lapsella"). form("lapsi", "case=ablative;number=singular", "lapselta"). form("lapsi", "case=allative;number=singular", "lapselle"). form("lapsi", "case=essive;number=singular", "lapsena"). form("lapsi", "case=translative;number=singular", "lapseksi").
form("lapsi", "case=nominative;number=plural", "lapset"). form("lapsi", "case=genitive;number=plural", "lasten"). form("lapsi", "case=partitive;number=plural", "lapsia"). form("lapsi", "case=inessive;number=plural", "lapsissa"). form("lapsi", "case=elative;number=plural", "lapsista"). form("lapsi", "case=illative;number=plural", "lapsiin"). form("lapsi", "case=adessive;number=plural", "lapsilla"). form("lapsi", "case=ablative;number=plural", "lapsilta"). form("lapsi", "case=allative;number=plural", "lapsille"). form("lapsi", "case=essive;number=plural", "lapsina"). form("lapsi", "case=translative;number=plural", "lapsiksi").
irregular("katu").
form("katu", "case=nominative;number=singular", "katu"). form("katu", "case=genitive;number=singular", "kadun"). form("katu", "case=partitive;number=singular", "katua"). form("katu", "case=inessive;number=singular", "kadussa"). form("katu", "case=elative;number=singular", "kadusta"). form("katu", "case=illative;number=singular", "katuun"). form("katu", "case=adessive;number=singular", "kadulla"). form("katu", "case=ablative;number=singular", "kadulta"). form("katu", "case=allative;number=singular", "kadulle"). form("katu", "case=essive;number=singular", "katuna"). form("katu", "case=translative;number=singular", "kaduksi").
form("katu", "case=nominative;number=plural", "kadut"). form("katu", "case=genitive;number=plural", "katujen"). form("katu", "case=partitive;number=plural", "katuja"). form("katu", "case=inessive;number=plural", "kaduissa"). form("katu", "case=elative;number=plural", "kaduista"). form("katu", "case=illative;number=plural", "katuihin"). form("katu", "case=adessive;number=plural", "kaduilla"). form("katu", "case=ablative;number=plural", "kaduilta"). form("katu", "case=allative;number=plural", "kaduille"). form("katu", "case=essive;number=plural", "katuina"). form("katu", "case=translative;number=plural", "kaduiksi").
irregular("kauppa").
form("kauppa", "case=nominative;number=singular", "kauppa"). form("kauppa", "case=genitive;number=singular", "kaupan"). form("kauppa", "case=partitive;number=singular", "kauppaa"). form("kauppa", "case=inessive;number=singular", "kaupassa"). form("kauppa", "case=elative;number=singular", "kaupasta"). form("kauppa", "case=illative;number=singular", "kauppaan"). form("kauppa", "case=adessive;number=singular", "kaupalla"). form("kauppa", "case=ablative;number=singular", "kaupalta"). form("kauppa", "case=allative;number=singular", "kaupalle"). form("kauppa", "case=essive;number=singular", "kauppana"). form("kauppa", "case=translative;number=singular", "kaupaksi").
form("kauppa", "case=nominative;number=plural", "kaupat"). form("kauppa", "case=genitive;number=plural", "kauppojen"). form("kauppa", "case=partitive;number=plural", "kauppoja"). form("kauppa", "case=inessive;number=plural", "kaupoissa"). form("kauppa", "case=elative;number=plural", "kaupoista"). form("kauppa", "case=illative;number=plural", "kauppoihin"). form("kauppa", "case=adessive;number=plural", "kaupoilla"). form("kauppa", "case=ablative;number=plural", "kaupoilta"). form("kauppa", "case=allative;number=plural", "kaupoille"). form("kauppa", "case=essive;number=plural", "kauppoina"). form("kauppa", "case=translative;number=plural", "kaupoiksi").
irregular("poika").
form("poika", "case=nominative;number=singular", "poika"). form("poika", "case=genitive;number=singular", "pojan"). form("poika", "case=partitive;number=singular", "poikaa"). form("poika", "case=inessive;number=singular", "pojassa"). form("poika", "case=elative;number=singular", "pojasta"). form("poika", "case=illative;number=singular", "poikaan"). form("poika", "case=adessive;number=singular", "pojalla"). form("poika", "case=ablative;number=singular", "pojalta"). form("poika", "case=allative;number=singular", "pojalle"). form("poika", "case=essive;number=singular", "poikana"). form("poika", "case=translative;number=singular", "pojaksi").
form("poika", "case=nominative;number=plural", "pojat"). form("poika", "case=genitive;number=plural", "poikien"). form("poika", "case=partitive;number=plural", "poikia"). form("poika", "case=inessive;number=plural", "pojissa"). form("poika", "case=elative;number=plural", "pojista"). form("poika", "case=illative;number=plural", "poikiin"). form("poika", "case=adessive;number=plural", "pojilla"). form("poika", "case=ablative;number=plural", "pojilta"). form("poika", "case=allative;number=plural", "pojille"). form("poika", "case=essive;number=plural", "poikina"). form("poika", "case=translative;number=plural", "pojiksi").
irregular("tyttö").
form("tyttö", "case=nominative;number=singular", "tyttö"). form("tyttö", "case=genitive;number=singular", "tytön"). form("tyttö", "case=partitive;number=singular", "tyttöä"). form("tyttö", "case=inessive;number=singular", "tytössä"). form("tyttö", "case=elative;number=singular", "tytöstä"). form("tyttö", "case=illative;number=singular", "tyttöön"). form("tyttö", "case=adessive;number=singular", "tytöllä"). form("tyttö", "case=ablative;number=singular", "tytöltä"). form("tyttö", "case=allative;number=singular", "tytölle"). form("tyttö", "case=essive;number=singular", "tyttönä"). form("tyttö", "case=translative;number=singular", "tytöksi").
form("tyttö", "case=nominative;number=plural", "tytöt"). form("tyttö", "case=genitive;number=plural", "tyttöjen"). form("tyttö", "case=partitive;number=plural", "tyttöjä"). form("tyttö", "case=inessive;number=plural", "tytöissä"). form("tyttö", "case=elative;number=plural", "tytöistä"). form("tyttö", "case=illative;number=plural", "tyttöihin"). form("tyttö", "case=adessive;number=plural", "tytöillä"). form("tyttö", "case=ablative;number=plural", "tytöiltä"). form("tyttö", "case=allative;number=plural", "tytöille"). form("tyttö", "case=essive;number=plural", "tyttöinä"). form("tyttö", "case=translative;number=plural", "tytöiksi").
