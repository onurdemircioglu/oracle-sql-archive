SELECT SYSDATE AS SYSTEM_DATE
        ,TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS') AS DATE_FORMAT_01
        ,TO_CHAR(SYSDATE, 'DDMMYYYY') AS DATE_FORMAT_02 -- MY FAVORITE FORMAT
        ,TO_CHAR(SYSDATE, 'YYYYMMDD') AS DATE_FORMAT_03
        ,TO_CHAR(SYSDATE, 'YYYYMM') AS DATE_FORMAT_04
        ,EXTRACT(YEAR FROM SYSDATE) || EXTRACT(MONTH FROM SYSDATE) AS DATE_FORMAT_05
        ,EXTRACT(YEAR FROM SYSDATE) || LPAD(EXTRACT(MONTH FROM SYSDATE), 2, '0') AS DATE_FORMAT_06
