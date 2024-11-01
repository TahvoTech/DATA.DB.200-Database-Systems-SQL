-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 4
Hae tilaus_id:t Jaska Jokunen -nimisen asiakkaan tekemille tilauksille.
Lajittele tulosrivit tilaus_id:n perusteella nousevaan järjestykseen.

Tulostaulun sarakenimet:
tilaus_id
*/

SELECT tilaus_id
FROM asiakas join tilaus on asiakas.asiakas_id = tilaus.asiakas_id
WHERE asiakas.nimi = 'Jaska Jokunen'
ORDER BY tilaus_id;