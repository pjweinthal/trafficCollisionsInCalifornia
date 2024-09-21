SELECT
    COUNT(DISTINCT party_number) AS total_fault_parties_lack_of_attention
FROM
    switrs.parties
WHERE
    at_fault = 'Y' AND (oaf_1 = 'F' OR oaf_2 = 'F');
-- The results show that five parties were found not paying attention while at fault.