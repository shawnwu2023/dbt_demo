WITH CTE AS(
    SELECT
    t.*,
    w.*
    FROM {{ ref('trip_fact') }} t
    LEFT JOIN {{ ref('daily_weather') }} w
    ON t.TRIP_DATE = w.daily_weather
    ORDER BY t.TRIP_DATE desc
)

SELECT
*
FROM CTE