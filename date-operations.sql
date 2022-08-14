SELECT SYSDATE AS SYSTEM_DATE
        ,TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS') AS DATE_WITH_TIME
        
        ,TO_CHAR(SYSDATE + 1, 'DD/MM/YYYY HH24:MI:SS') AS DATE_PLUS_ONE_DAY
        ,TO_CHAR(SYSDATE - 1, 'DD/MM/YYYY HH24:MI:SS') AS DATE_MINUS_ONE_DAY
        ,TO_CHAR(SYSDATE + 10/1440, 'DD/MM/YYYY HH24:MI:SS') AS DATE_10_MINUTES_FROM_NOW
        ,TO_CHAR(SYSDATE - 0.5/1440, 'DD/MM/YYYY HH24:MI:SS') AS DATE_30_SECOND_BEFORE_NOW
        ,TO_CHAR(SYSDATE + 60/1440, 'DD/MM/YYYY HH24:MI:SS') AS DATE_1_HOUR_FROM_NOW_V1
        ,TO_CHAR(SYSDATE + 1/24, 'DD/MM/YYYY HH24:MI:SS') AS DATE_1_HOUR_FROM_NOW_V2
        ,TO_CHAR(SYSDATE + 1.5/24, 'DD/MM/YYYY HH24:MI:SS') AS DATE_1_HOUR_30_MINUTES_FROM_NOW
        ,TO_CHAR(SYSDATE + 1.65/24, 'DD/MM/YYYY HH24:MI:SS') AS DATE_1_HOUR_39_MINUTES_FROM_NOW
        ,TO_CHAR(SYSDATE + 10/ (24*60*60), 'DD/MM/YYYY HH24:MI:SS') AS DATE_10_SECONDS_FROM_NOW
        ,TO_CHAR(SYSDATE + 3 + (1/24) + (12/1440) + (10/(24*60*60)) , 'DD/MM/YYYY HH24:MI:SS') AS DATE_3_DAYS_1_HOUR_12_MINUTES_10_SECONDS_FROM_NOW
        
        ,TRUNC(SYSDATE, 'YEAR') AS BEGINNING_OF_CURRENT_YEAR
        ,TRUNC(SYSDATE, 'YEAR') - 1 AS END_OF_LAST_YEAR
        ,LAST_DAY(ADD_MONTHS(SYSDATE, 12 - EXTRACT(MONTH FROM SYSDATE))) AS END_OF_CURRENT_YEAR
        ,LAST_DAY(ADD_MONTHS(SYSDATE, 12 - EXTRACT(MONTH FROM SYSDATE))) + 1 AS BEGINNING_OF_NEXT_YEAR
        ,ADD_MONTHS(ADD_MONTHS(LAST_DAY(TRUNC(SYSDATE)),12), 12 - EXTRACT(MONTH FROM SYSDATE)) AS END_OF_NEXT_YEAR_V1
        ,ADD_MONTHS(LAST_DAY(ADD_MONTHS(TRUNC(SYSDATE),12 - TO_NUMBER(TO_CHAR(SYSDATE,'MM')))) ,12) AS END_OF_NEXT_YEAR_V2
        
        ,EXTRACT(YEAR FROM ADD_MONTHS(SYSDATE, -3)) || '-Q' || TO_CHAR(ADD_MONTHS(SYSDATE, -3), 'Q') AS PREVIOUS_QUARTER
        ,EXTRACT(YEAR FROM SYSDATE) || '-Q' || TO_CHAR(SYSDATE, 'Q') AS CURRENT_QUARTER
        ,ADD_MONTHS(TRUNC(SYSDATE,'Q') -1, 3) AS END_OF_CURRENT_QUARTER
        ,EXTRACT(YEAR FROM ADD_MONTHS(SYSDATE, 3)) || '-Q' || TO_CHAR(ADD_MONTHS(SYSDATE, 3), 'Q') AS NEXT_QUARTER
        
        ,TRUNC(SYSDATE, 'MONTH') AS BEGINNING_OF_CURRENT_MONTH
        ,TRUNC(SYSDATE, 'MONTH') - 1 AS END_OF_LAST_MONTH
        ,ADD_MONTHS(SYSDATE, -1) AS PREVIOUS_MONTH_SAME_DAY -- IF CURRENT DAY DOES NOT EXIST ON PREVIOUS MONTH (e.g 31.03.2021 AND 28/29.02.2021) RESULT WILL BE END OF MONTH, THERE IS NO NEED FOR LAST_DAY
        ,ADD_MONTHS(SYSDATE, 1) AS NEXT_MONTH_SAME_DAY -- IF CURRENT DAY DOES NOT EXIST ON NEXT MONTH (e.g. 31.03.2021 AND 30.04.2021) RESULT WILL BE END OF MONTH
        ,LAST_DAY(SYSDATE) AS END_OF_CURRENT_MONTH
        ,LAST_DAY(SYSDATE) + 1 AS BEGINNING_OF_NEXT_MONTH_V1
        ,TRUNC(ADD_MONTHS(SYSDATE, 1), 'MONTH') AS BEGINNING_OF_NEXT_MONTH_V2
        ,LAST_DAY(ADD_MONTHS(SYSDATE, 1)) AS END_OF_NEXT_MONTH
FROM DUAL
;


