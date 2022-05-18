TTITLE '악보 검색 List'
COLUMN  악보명 HEADING 악보 FORMAT A20
COLUMN  이름  HEADING 장르 FORMAT A20
COLUMN  참여자명 HEADING '작곡가/작사자/가수' FORMAT A30
COLUMN 악기명 HEADING '악기'
COLUMN 등록일 FORMAT A20
COLUMN 판매수량 HEADING '판매 수'

SELECT 악보.악보명, 악보장르.이름, 음반참여자.참여자명, 악기.악기명, 악보.가격, 악보.등록일, 악보.판매수량, 악보.별점
FROM  악보, 악보장르, 음반참여자, 참여하다, 악기
WHERE 악보명 = '&악보명'
AND 악보장르.악보일련번호 = 악보.일련번호
AND 참여하다.참여자ID = 음반참여자.ID
AND 참여하다.악보일련번호 = 악보.일련번호
AND 악기.악보일련번호 = 악보.일련번호
ORDER BY 판매수량
/

TTITLE  OFF
CLEAR  COLUMN




