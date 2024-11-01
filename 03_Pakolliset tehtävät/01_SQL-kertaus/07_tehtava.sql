-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 7
Hae asiakas_id ja nimi asiakkaille, jotka ovat joskus tilanneet kaupasta.
Lajittele tulostaulun rivit nousevaan järjestykseen asiakas_id:n perusteella.

Tulostaulun sarakenimet
asiakas_id nimi
*/

SELECT DISTINCT asiakas.asiakas_id, asiakas.nimi
FROM asiakas
JOIN tilaus ON asiakas.asiakas_id = tilaus.asiakas_id  -- Inner join palauttaa vain ne rivit, joilla on yhteinen arvo molemmissa tauluissa.
ORDER BY asiakas.asiakas_id