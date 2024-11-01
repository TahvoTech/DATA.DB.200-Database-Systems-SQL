-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 9

Hae jokaiselle asiakkaalle asiakas_id, nimi ja hänen tekemiensä tilausten lukumäärä (tilaus_lkm).
Lajittele tulostaulun rivit nousevaan järjestykseen asiakas_id:n perusteella.

Tulostaulun sarakenimet:
asiakas_id nimi tilaus_lkm
*/

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;