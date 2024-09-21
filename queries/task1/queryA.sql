SELECT
  COUNT(DISTINCT party_number) AS total_fault_parties
FROM
  switrs.parties
WHERE
  at_fault = 'Y';
-- The findings show that nine people were at fault for a collision.