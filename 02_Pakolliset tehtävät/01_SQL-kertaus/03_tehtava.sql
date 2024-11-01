-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
 Tehtävä 3
Hae kaikille tilauksille seuraavat tiedot: tilaus_id, tilauksen tehneen asiakkaan id ja nimi.
Lajittele tulostaulun rivit nousevaan järjestykseen tilaus_id:n mukaan.

Tulostaulun sarakenimet:
tilaus_id asiakas_id nimi
*/

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;