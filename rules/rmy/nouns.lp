% rules/rmy/nouns.lp
% Albanian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19145: A Grammar of North West Lovari Romani / Gramatika severozápadní olaštiny (lovárštiny) (2012), pages 70, 71, 73, 74, 75, 77, 78, 150, 151, 163
%   doc 389388: A Grammatical Sketch of Albanian for students of Indo-European (2012), pages 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 28
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   minor_xenoclitic_masculine_noun_classes doktor — grammar: "Minor Xenoclitic Masculine Noun Classes"
%   oikoclitic_fem_ofi           gajži — grammar: "oikoclitic FEM., OFI"
%   minor_xenoclitic_masculine_noun_classes_2 ternimo — grammar: "Minor Xenoclitic Masculine Noun Classes"
%   oikoclitic_masc_omo          šávo — grammar: "oikoclitic MASC., OMO"
%   xenoclitic_masc_xmo          fouro — grammar: "xenoclitic MASC., XMO"
%   o_stems                      shok — grammar: "o-stems"
%   a_stems                      vajzë — grammar: "a-stems"
%   xenoclitic_fem_xfa           vorba — grammar: "xenoclitic FEM., XFA"
%   jakh_type                    jakh
%   diminutives_in_our           pheňour-i — grammar: "diminutives in -our-"
%   diminutives_in_our_2         phralour — grammar: "diminutives in -our-"
%   xenoclitic_full_shortened_stems phábaj — grammar: "xenoclitic (full/shortened stems)"
%   rat_type                     rat
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
