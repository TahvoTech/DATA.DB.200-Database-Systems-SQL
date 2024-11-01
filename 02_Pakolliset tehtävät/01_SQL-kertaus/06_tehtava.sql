-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
 Tehtävä 6
Hae kaikkien Applen (valmistaja on Apple) tuotteiden tuote_id, nimi sekä mahdollisesti kyseistä tuotetta sisältävien tilausten tilaus_id:t.
Lajittele tulostaulun rivit nousevaan järjestykseen tuote_id:n ja tilaus_id:n perusteella.

Tulostaulun sarakenimet:
tuote_id nimi tilaus_id
*/

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;