-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 6
Hae kaikkien Applen (valmistaja on Apple) tuotteiden tuote_id, nimi sekä mahdollisesti kyseistä tuotetta sisältävien tilausten tilaus_id:t.
Lajittele tulostaulun rivit nousevaan järjestykseen tuote_id:n ja tilaus_id:n perusteella.

Tulostaulun sarakenimet:
tuote_id nimi tilaus_id
*/

SELECT tuote.tuote_id, tuote.nimi, tilaustuote.tilaus_id
FROM tuote
LEFT JOIN tilaustuote ON tuote.tuote_id = tilaustuote.tuote_id
WHERE valmistaja = 'Apple'
ORDER BY tuote.tuote_id, tilaustuote.tilaus_id;