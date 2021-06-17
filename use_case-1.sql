-- FINDING LAST THURSDAY (OR ANY DAY) BEFORE END OF NEXT MONTH (END OF MONTH IS EXCLUDED)
SELECT SYSDATE AS START_DATE
      ,CASE WHEN TO_CHAR(LAST_DAY(ADD_MONTHS(TEST_DATE,1)) - 7 ,'D') = 5 THEN LAST_DAY(ADD_MONTHS(TEST_DATE,1)) - 7  -- THURSDAY WE'RE LOOKING FOR
            ELSE NEXT_DAY(LAST_DAY(ADD_MONTHS(TEST_DATE,1)) - 7 ,'THURSDAY')
      END AS FINAL_DATE

      ,CASE WHEN TO_CHAR(LAST_DAY(ADD_MONTHS(TEST_DATE,1)) ,'D') = 5 THEN LAST_DAY(ADD_MONTHS(TEST_DATE,1))   -- THURSDAY WE'RE LOOKING FOR
            WHEN TO_CHAR(LAST_DAY(ADD_MONTHS(TEST_DATE,1)) - 7 ,'D') = 5 THEN LAST_DAY(ADD_MONTHS(TEST_DATE,1)) - 7
            ELSE NEXT_DAY(LAST_DAY(ADD_MONTHS(TEST_DATE,1)) - 7 ,'THURSDAY')      
      END AS FINAL_DATE2 -- IF END OF MONTH IS INCLUDED
FROM
(
SELECT TO_DATE('25082021' ,'DDMMYYYY') AS TEST_DATE
FROM DUAL
)
;
