SELECT
    COUNT(*) AS combined_rows
FROM
    switrs.collisions INNER JOIN switrs.parties ON collisions.case_id = parties.case_id;

-- There are 940216 rows in the combined output table indicating that many collisions with information about the associated parties.