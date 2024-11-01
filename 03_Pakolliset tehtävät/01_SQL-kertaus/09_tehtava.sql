-- Jarmo Tahvanainen
-- jarmo.tahvanainen@tuni.fi

/*
Tehtävä 9

Hae jokaiselle asiakkaalle asiakas_id, nimi ja hänen tekemiensä tilausten lukumäärä (tilaus_lkm).
Lajittele tulostaulun rivit nousevaan järjestykseen asiakas_id:n perusteella.

Tulostaulun sarakenimet:
asiakas_id nimi tilaus_lkm
*/

SELECT asiakas.asiakas_id, asiakas.nimi, COUNT(tilaus.tilaus_id) AS tilaus_lkm
FROM asiakas
LEFT JOIN tilaus
ON asiakas.asiakas_id = tilaus.asiakas_id
GROUP BY asiakas.asiakas_id
ORDER BY asiakas.asiakas_id;

/*
 * This SQL query selects all columns from the "employees" table
 * where the "department" column matches the specified department name.
 * 
 * Parameters:
 * - department_name: The name of the department to filter employees by.
 * 
 * Example usage:
 * SELECT * FROM employees WHERE department = 'Sales';
 */