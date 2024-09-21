SELECT
    c.day_of_week, 
    COUNT(*) AS total_accidents, 
    SUM(
        CASE
            WHEN p.at_fault = 'Y'
            AND (p.oaf_1 = 'F'
            OR p.oaf_2 = 'F'
        )   THEN 1
            ELSE 0 
        END
    ) AS inattention_accidents,
    SUM(
        CASE
            WHEN p.at_fault = 'Y'
            AND (
                p.sp_info_2 = 'B'
                OR p.sp_info_2 = '1'
                OR p.sp_info_2 = '2'
            ) THEN 1
            ELSE 0 
        END
    ) AS cell_phone_distraction_accidents
FROM
    switrs.collisions c
    INNER JOIN switrs.parties p ON c.case_id = p.case_id
GROUP BY
    c.day_of_week
ORDER BY
    total_accidents DESC;