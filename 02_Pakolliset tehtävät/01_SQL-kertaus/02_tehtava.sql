-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 2
Hae kaikkien eri valmistajien nimet (erinimiset valmistajat tuote-taulusta).
Lajittele tulostaulun rivit nousevaan järjestykseen valmistajan nimen mukaan.

Tulostaulun sarakenimet:
valmistaja
*/

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;