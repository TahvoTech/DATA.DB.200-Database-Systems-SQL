-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 2
Hae kaikkien eri valmistajien nimet (erinimiset valmistajat tuote-taulusta).
Lajittele tulostaulun rivit nousevaan järjestykseen valmistajan nimen mukaan.

Tulostaulun sarakenimet:
valmistaja
*/

SELECT valmistaja
FROM tuote
ORDER BY valmistaja ASC; -- ASC oikeasti tarpeeton, koska se on oletusarvo... mutta laitetaan nyt kuitenkin.