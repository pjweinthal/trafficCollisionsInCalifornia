SELECT
    c.day_of_week, COUNT(*) AS collision_count
FROM
    switrs.collisions c INNER JOIN switrs.parties p ON c.case_id = p.case_id
WHERE
    p.at_fault = 'Y' AND p.party_sobriety = 'B'
GROUP BY
    c.day_of_week
ORDER BY
    collision_count DESC;

-- The results show that Saturday and Sunday had the highest values at 70k+ and Tuesday had the lowest value at around 3k.