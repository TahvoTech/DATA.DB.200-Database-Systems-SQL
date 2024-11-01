-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

"""
Tehtävä 1

Hae kaikki asiakastaulun tiedot.
Lajittele tulostaulun rivit nousevaan järjestykseen asiakkaan nimen ja asiakas_id:n mukaan.

Tulostaulun sarakenimet:
asiakas_id nimi osoite
"""

SELECT asiakas_id, nimi, osoite
FROM asiakas
ORDER BY nimi, asiakas_id;