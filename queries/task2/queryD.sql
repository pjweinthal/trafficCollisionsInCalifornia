SELECT
    c.day_of_week, COUNT(*) AS collision_count
FROM
    switrs.collisions c
    INNER JOIN switrs.parties p ON c.case_id = p.case_id
WHERE
    p.at_fault = 'Y' AND (p.oaf_1 = 'F' OR p.oaf_2 = 'F')
GROUP BY
    c.day_of_week
ORDER BY
    collision_count DESC;

