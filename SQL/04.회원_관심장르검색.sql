TTITLE '회원 관심장르 검색 List'
COLUMN  회원ID HEADING '회원 ID' FORMAT A10
COLUMN  이름  HEADING  관심장르 FORMAT 99999
COLUMN  EMail HEADING '이메일 주소' FORMAT A20

SELECT 회원관심장르.회원ID, 회원관심장르.이름, 회원.EMail
FROM  회원관심장르, 회원
WHERE 회원관심장르.이름 = '&관심장르명'
AND  회원관심장르.회원ID = 회원.ID
ORDER BY 회원ID
/

TTITLE  OFF
CLEAR  COLUMN


