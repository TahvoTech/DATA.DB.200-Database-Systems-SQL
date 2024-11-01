-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
 Tehtävä 11
Hae asiakas_id ja nimi niille asiakkaille, jotka ovat tilanneet sekä rihvelin että tunkin.

Tulostaulun sarakenimet:
asiakas_id nimi
*/

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;