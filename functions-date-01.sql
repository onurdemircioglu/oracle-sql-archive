SELECT SYSDATE AS SYSTEM_DATE

        ,TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS') AS DATE_FORMAT_01
        ,TO_CHAR(SYSDATE, 'DDMMYYYY') AS DATE_FORMAT_02 -- MY FAVORITE FORMAT
        ,TO_CHAR(SYSDATE, 'YYYYMMDD') AS DATE_FORMAT_03
        ,TO_CHAR(SYSDATE, 'YYYYMM') AS DATE_FORMAT_04
        ,EXTRACT(YEAR FROM SYSDATE) || EXTRACT(MONTH FROM SYSDATE) AS DATE_FORMAT_05
        ,EXTRACT(YEAR FROM SYSDATE) || LPAD(EXTRACT(MONTH FROM SYSDATE), 2, '0') AS DATE_FORMAT_06
        ,TO_DATE(2021 || '08' || '02', 'YYYYMMDD') AS DATE_FORMAT_07 -- IF YOU HAVE YEAR, MONTH, DAY VALUES YOU CAN CREATE DATE WITH FORMAT
        
        ,TO_CHAR(SYSDATE, 'YYYY') AS YEAR_FORMAT_01
        ,EXTRACT(YEAR FROM SYSDATE) AS YEAR_FORMAT_02 -- THIS FUNCTIONS EXTRACTS NUMBER FORMAT
        ,TRUNC(SYSDATE, 'YEAR') - 1 AS END_OF_LAST_YEAR
        ,TRUNC(SYSDATE, 'YEAR') AS BEGINNING_OF_CURRENT_YEAR
        ,LAST_DAY(ADD_MONTHS(SYSDATE, 12 - EXTRACT(MONTH FROM SYSDATE))) AS END_OF_CURRENT_YEAR
        ,LAST_DAY(ADD_MONTHS(SYSDATE, 12 - EXTRACT(MONTH FROM SYSDATE))) + 1 AS BEGINNING_OF_NEXT_YEAR
        
        ,EXTRACT(YEAR FROM ADD_MONTHS(SYSDATE, -3)) || '-Q' || TO_CHAR(ADD_MONTHS(SYSDATE, -3), 'Q') AS PREVIOUS_QUARTER
        ,EXTRACT(YEAR FROM SYSDATE) || '-Q' || TO_CHAR(SYSDATE, 'Q') AS CURRENT_QUARTER
        ,EXTRACT(YEAR FROM ADD_MONTHS(SYSDATE, 3)) || '-Q' || TO_CHAR(ADD_MONTHS(SYSDATE, 3), 'Q') AS NEXT_QUARTER
        
        ,TO_CHAR(SYSDATE, 'MONTH') AS MONTH_NAME -- BASED ON NLS SETTINGS
        ,TO_CHAR(SYSDATE, 'MON') AS MONTH_NAME_SHORT
        ,TO_CHAR(SYSDATE, 'MM') AS MONTH_FORMAT_01
        ,TO_CHAR(SYSDATE, 'MM') * 1 AS MONTH_FORMAT_02 -- IF MONTH <10 THEN IT TAKES ZERO BEFORE MONTH VALUE
        ,TO_NUMBER(TO_CHAR(SYSDATE, 'MM')) AS MONTH_FORMAT_03 -- IF MONTH <10 THEN IT TAKES ZERO BEFORE MONTH VALUE
        ,EXTRACT(MONTH FROM SYSDATE) AS MONTH_FORMAT_04 -- THIS FUNCTIONS EXTRACTS NUMBER FORMAT
        ,TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = TURKISH') AS MONTH_NAME_LOCAL_01
        ,TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = GERMAN') AS MONTH_NAME_LOCAL_02
        ,TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = FRENCH') AS MONTH_NAME_LOCAL_03
        ,TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = JAPANESE') AS MONTH_NAME_LOCAL_04
        ,TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = SPANISH') AS MONTH_NAME_LOCAL_05
        
        ,TRUNC(SYSDATE, 'MONTH') - 1 AS END_OF_LAST_MONTH
        ,TRUNC(SYSDATE, 'MONTH') AS BEGINNING_OF_CURRENT_MONTH
        ,ADD_MONTHS(SYSDATE, -1) AS PREVIOUS_MONTH_CURRENT_DAY -- IF CURRENT DAY DOES NOT EXIST ON PREVIOUS MONTH (e.g 31.03.2021 AND 28/29.02.2021) RESULT WILL BE END OF MONTH, THERE IS NO NEED FOR LAST_DAY
        ,ADD_MONTHS(SYSDATE, 1) AS NEXT_MONTH_CURRENT_DAY -- IF CURRENT DAY DOES NOT EXIST ON NEXT MONTH (e.g. 31.03.2021 AND 30.04.2021) RESULT WILL BE END OF MONTH
        ,LAST_DAY(SYSDATE) AS END_OF_CURRENT_MONTH
        ,LAST_DAY(SYSDATE) + 1 AS BEGINNING_OF_NEXT_MONTH_01
        ,TRUNC(ADD_MONTHS(SYSDATE, 1), 'MONTH') AS BEGINNING_OF_NEXT_MONTH_02
        ,LAST_DAY(ADD_MONTHS(SYSDATE, 1)) AS END_OF_NEXT_MONTH
        
        ,TO_CHAR(SYSDATE, 'DAY') AS DAY_NAME
        ,TO_CHAR(SYSDATE, 'DD') AS DAY_FORMAT_01
        ,TO_CHAR(SYSDATE, 'DD') * 1 AS DAY_FORMAT_02 -- IF DAY <10 THEN IT TAKES ZERO BEFORE DAY VALUE
        ,TO_NUMBER(TO_CHAR(SYSDATE, 'DD')) AS DAY_FORMAT_03 -- IF DAY <10 THEN IT TAKES ZERO BEFORE DAY VALUE
        ,EXTRACT(DAY FROM SYSDATE) AS DAY_FORMAT_04 -- THIS FUNCTIONS EXTRACTS NUMBER FORMAT
        ,SYSDATE - 1 AS PREVIOUS_DAY -- + 1 >> NEXT_DAY

FROM DUAL
;
