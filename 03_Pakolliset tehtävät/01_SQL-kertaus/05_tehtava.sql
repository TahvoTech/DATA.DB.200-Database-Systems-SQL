-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 5
Hae tuote_id ja nimi postitetuilta (tilauksen tila = 1) tuotteilta, jotka Jaska Jokunen on tilannut.
Lajittele tulosrivit tuote_id:n perusteella nousevaan järjestykseen.

Tulostaulun sarakenimet:
tuote_id nimi
*/

SELECT tuote.tuote_id, tuote.nimi
FROM asiakas 
JOIN tilaus ON asiakas.asiakas_id = tilaus.asiakas_id
JOIN tilaustuote ON tilaus.tilaus_id = tilaustuote.tilaus_id
JOIN tuote ON tilaustuote.tuote_id = tuote.tuote_id
WHERE asiakas.nimi = 'Jaska Jokunen'
AND tilaus.tila = 1
ORDER BY tuote.tuote_id;