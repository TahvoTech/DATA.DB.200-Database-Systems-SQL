-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
 Tehtävä 3
Hae kaikille tilauksille seuraavat tiedot: tilaus_id, tilauksen tehneen asiakkaan id ja nimi.
Lajittele tulostaulun rivit nousevaan järjestykseen tilaus_id:n mukaan.

Tulostaulun sarakenimet:
tilaus_id asiakas_id nimi
*/

SELECT tilaus.tilaus_id, asiakas.asiakas_id, asiakas.nimi
FROM asiakas join tilaus on asiakas.asiakas_id = tilaus.asiakas_id
ORDER BY tilaus.tilaus_id;