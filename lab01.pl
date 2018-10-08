alat_musik(drum).
alat_musik(biola).
alat_musik(flute).
alat_musik(piano).

musisi(_, _, _, _).

duduk(ListMusisi) :- 

ListMusisi = [musisi(0, _, _, _), musisi(1, _, _, _), musisi(2, _, _, _), musisi(3, _, _, _)], 

member(musisi(A, bernard, _, p), ListMusisi),
member(musisi(B, anita, _, w), ListMusisi), 
member(musisi(C, cynthia, _, w), ListMusisi),
member(musisi(D, doni, _, p), ListMusisi),

% seberang bernard main piano
member(musisi(R1, _, piano, _), ListMusisi),
T1 is A+R1,
0 is T1 mod 2,
A \== R1,

% seberang doni bukan main flute
alat_musik(X),
X \== flute,
member(musisi(R2, _, X, _), ListMusisi),
T2 is D+R2,
0 is T2 mod 2,
D \== R2,

% sebelah kiri anita main biola
member(musisi(R3, _, biola, _), ListMusisi),
1 is (B-R3+4) mod 4,

% sebelah kiri cynthia bukan main drum
alat_musik(Y),
Y \== drum,
member(musisi(R4, _, Y, _), ListMusisi),
1 is (C-R4+4) mod 4,

(
(
member(musisi(_, _, flute, w), ListMusisi),
member(musisi(_, _, drum, p), ListMusisi)
);
(
member(musisi(_, _, flute, p), ListMusisi),
member(musisi(_, _, drum, w), ListMusisi)
)
).


