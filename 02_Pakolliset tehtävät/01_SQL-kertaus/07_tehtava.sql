-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
 Tehtävä 7
Hae asiakas_id ja nimi asiakkaille, jotka ovat joskus tilanneet kaupasta.
Lajittele tulostaulun rivit nousevaan järjestykseen asiakas_id:n perusteella.

Tulostaulun sarakenimet
asiakas_id nimi
*/

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;