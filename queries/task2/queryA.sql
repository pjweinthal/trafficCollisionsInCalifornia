SELECT
    day_of_week, COUNT(*) AS collision_count
FROM
    switrs.collisions
GROUP BY
    day_of_week
ORDER BY
    collision_count DESC;

-- The results show that Thursday and Friday had the highest values at 70k+ and Sunday had the lowest value at around 55K.