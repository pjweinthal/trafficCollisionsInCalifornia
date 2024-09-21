SELECT
    COUNT(DISTINCT party_number) AS total_fault_parties_under_influence
FROM
    switrs.parties
WHERE
    at_fault = 'Y' AND party_sobriety = 'B';
    
-- The results show that five parties were found under the influence while at fault.