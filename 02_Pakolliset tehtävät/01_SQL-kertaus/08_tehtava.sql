-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 8
Hae kaikki tuote-taulun tiedot niiltä tuotteita, joita ei ole koskaan tilattu.
Lajittele tulostaulun rivit nousevaan järjestykseen tuote_id:n perusteella.

Tulostaulun sarakenimet:
tuote_id nimi valmistaja hinta
*/

SELECT tuote.tuote_id, tuote.nimi, tuote.valmistaja, tuote.hinta
FROM tuote
LEFT JOIN tilaustuote ON tuote.tuote_id = tilaustuote.tuote_id  -- käyttäessä left joinia, niin lisää tuote taulun kaikki rivit, eli myös tuote_id:t, jotka eivät ole tilaustuotteissa. Sitten Where avulla valitaan ne tuotteet, jotka eivät ole tilaustuotteissa.
WHERE tilaustuote.tuote_id IS NULL
ORDER BY tuote.tuote_id;