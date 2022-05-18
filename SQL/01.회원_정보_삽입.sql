SET ECHO OFF
SET VERIFY OFF

define id='&회원id';
insert into 회원 values ('&id', '&비밀번호', '&이메일주소');
commit;
insert into 회원관심장르 values('&관심장르명', '&id');
undefine id;

SET VERIFY ON
SET ECHO ON

SET FEEDBACK OFF

TTITLE  '회원 정보 리스트'
COLUMN   id           HEADING   '회원 ID'
COLUMN   password    HEADING   '비밀번호'      FORMAT A15
COLUMN   email       HEADING    '이메일 주소'   FORMAT A25
COLUMN   이름        HEADING   '관심장르'   FORMAT 99999

select 회원.id, 회원.password, 회원.email, 회원관심장르.이름
from 회원, 회원관심장르
where 회원.id=회원관심장르.회원id
order by id
/

TTITLE OFF
CLEAR COLUMN






