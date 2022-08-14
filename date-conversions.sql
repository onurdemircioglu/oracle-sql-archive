SELECT SYSDATE AS SYSTEM_DATE

        ,TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS') AS DATE_WITH_TIME
        
        ,EXTRACT(YEAR FROM SYSDATE) AS EXTRACT_YEAR
        ,EXTRACT(MONTH FROM SYSDATE) AS EXTRACT_MONTH
        ,EXTRACT(DAY FROM SYSDATE) AS EXTRACT_DAY
        ,EXTRACT(YEAR FROM SYSDATE) || EXTRACT(MONTH FROM SYSDATE) AS EXTRACT_DATE_YEAR_v1
        ,EXTRACT(YEAR FROM SYSDATE) || LPAD(EXTRACT(MONTH FROM SYSDATE), 2, '0') AS EXTRACT_DATE_YEAR_v2
        
        ,TO_CHAR(SYSDATE, 'DDMMYYYY') AS DATE_FORMAT_DDMMYYYY -- MY FAVORITE FORMAT
        ,TO_CHAR(SYSDATE, 'YYYYMMDD') AS DATE_FORMAT_YYYYMMDD -- MY SECOND FAVORITE FORMAT
        ,TO_CHAR(SYSDATE, 'YYYYMM') AS DATE_FORMAT_YYYYMM
        ,TO_CHAR(SYSDATE, 'YYYY') AS DATE_FORMAT_YYYY
        
        ,TO_CHAR(SYSDATE, 'MONTH') AS MONTH_NAME -- RESULT IS BASED ON NLS SETTINGS
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
            
        ,TO_CHAR(SYSDATE, 'DAY') AS DAY_NAME -- RESULT IS BASED ON NLS SETTINGS
        ,TO_CHAR(SYSDATE, 'DD') AS DAY_FORMAT_01
        ,TO_CHAR(SYSDATE, 'DD') * 1 AS DAY_FORMAT_02 -- IF DAY <10 THEN IT TAKES ZERO BEFORE DAY VALUE
        ,TO_NUMBER(TO_CHAR(SYSDATE, 'DD')) AS DAY_FORMAT_03 -- IF DAY <10 THEN IT TAKES ZERO BEFORE DAY VALUE
FROM DUAL
;
