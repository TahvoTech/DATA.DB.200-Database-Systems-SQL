-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 10

Hae asiakas_id ja tilausten lukumäärä asiakkaille, jotka ovat tehneet useamman kuin yhden tilauksen.
Lajittele tulostaulun rivit nousevaan järjestykseen asiakas_id:n perusteella.

Tulostaulun sarakenimet:
asiakas_id tilaus_lkm
*/

SELECT asiakas.asiakas_id, COUNT(tilaus.tilaus_id) AS tilaus_lkm
FROM asiakas
JOIN tilaus -- ei kaikkia näkyviin, joten JOIN. LEFT JOIN ei tarpeen.
ON asiakas.asiakas_id = tilaus.asiakas_id -- tämä koska tarvitaan vain ne, joilla on tilauksia
GROUP BY asiakas.asiakas_id
HAVING COUNT(tilaus.tilaus_id) > 1 -- tällä saadaan ne, joilla on useampi kuin yksi tilaus, eli sortattua pois ne, joilla on vain yksi tilaus.
ORDER BY asiakas.asiakas_id;

-- pitäisi näyttää tältä:
-- 
-- | asiakas_id | tilaus_lkm |
-- |------------|------------|
-- | 3          | 2          |
