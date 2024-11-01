-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 11
Hae asiakas_id ja nimi niille asiakkaille, jotka ovat tilanneet sekä rihvelin että tunkin.

Tulostaulun sarakenimet:
asiakas_id nimi
*/

SELECT asiakas.asiakas_id, asiakas.nimi
FROM asiakas
JOIN tilaus
ON asiakas.asiakas_id = tilaus.asiakas_id
JOIN tilaustuote
ON tilaus.tilaus_id = tilaustuote.tilaus_id
JOIN tuote
ON tilaustuote.tuote_id = tuote.tuote_id
WHERE tuote.nimi IN ('rihveli', 'tunkki')
GROUP BY asiakas.asiakas_id, asiakas.nimi -- yhdistetään, jotta voidaan laskea montako eri tuotetta asiakas on tilannut
HAVING COUNT(DISTINCT tuote.nimi) = 2  -- lasketaan montako eri tuotetta asiakas on tilannut. Täsä tapauksessa pitää olla 2 eri tuotetta.