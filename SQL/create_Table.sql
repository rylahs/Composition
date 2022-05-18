
CREATE TABLE 악보 ( 
 일련번호          NUMBER(10),
 별점              NUMBER(1),
 악보명              VARCHAR2(20) NOT NULL, 
 가격              VARCHAR2(10) NOT NULL,
 등록일            DATE NOT NULL,
 판매수량          NUMBER(6),
 수수료            NUMBER(10) NOT NULL,
 CONSTRAINT  악보_PK  PRIMARY KEY (일련번호),
 CONSTRAINT  별점_CK CHECK(별점 BETWEEN 0 AND 5));
 
 INSERT INTO 악보 VALUES ('1010101', 4, 'Rolling in the deep', 500, TO_DATE('2003/4/25','yyyy/mm/dd'),5,500); 
 INSERT INTO 악보 VALUES ('2010101', 2, '길을 막지마', 1000, TO_DATE('2003/4/25','yyyy/mm/dd'),12,500); 
 INSERT INTO 악보 VALUES ('3010101', 3, '소나기', 500, TO_DATE('2003/4/25','yyyy/mm/dd'),18,600); 
 INSERT INTO 악보 VALUES ('4010101', 4, '크게 라디오를 켜고', 1000, TO_DATE('2003/4/25','yyyy/mm/dd'),54,1000); 
 INSERT INTO 악보 VALUES ('5010101', 1, 'Faint', 500, TO_DATE('2003/4/25','yyyy/mm/dd'),5,500); 
 INSERT INTO 악보 VALUES ('6010101', 4, '남자를 몰라', 1000, TO_DATE('2003/4/25','yyyy/mm/dd'),67,500); 
 INSERT INTO 악보 VALUES ('7010101', 5, 'She is', 1500, TO_DATE('2003/4/25','yyyy/mm/dd'),254,1000); 
 INSERT INTO 악보 VALUES ('8010101', 4, 'GoodLuck', 1500, TO_DATE('2003/4/25','yyyy/mm/dd'),63,500); 
 INSERT INTO 악보 VALUES ('9010101', 4, 'Hello', 1200, TO_DATE('2003/4/25','yyyy/mm/dd'),124,1000); 
 INSERT INTO 악보 VALUES ('1010100', 4, 'Ladies', 500, TO_DATE('2003/4/25','yyyy/mm/dd'),15,500); 


commit; 


CREATE TABLE 악보장르( 
이름         VARCHAR2(20),
악보일련번호  NUMBER(10),
           
 CONSTRAINT  악보장르_PK  PRIMARY KEY (이름, 악보일련번호),	        
 CONSTRAINT  악보장르_FK  FOREIGN KEY(악보일련번호)
                  REFERENCES 악보(일련번호));


INSERT INTO 악보장르 VALUES ('Pop','1010101');
INSERT INTO 악보장르 VALUES ('가요','2010101');
INSERT INTO 악보장르 VALUES ('Pop','3010101');
INSERT INTO 악보장르 VALUES ('클래식','4010101');
INSERT INTO 악보장르 VALUES ('가요','5010101');
INSERT INTO 악보장르 VALUES ('가요','6010101');
INSERT INTO 악보장르 VALUES ('가요','7010101');
INSERT INTO 악보장르 VALUES ('가요','8010101');
INSERT INTO 악보장르 VALUES ('가요','9010101');
INSERT INTO 악보장르 VALUES ('가요','1010100');



commit;


CREATE TABLE  음반참여자( 
 ID         VARCHAR2(20),
 구분       NUMBER(1),
 참여자명       VARCHAR2(20), 
CONSTRAINT  음반참여자_PK  PRIMARY KEY (ID));

INSERT INTO 음반참여자 VALUES ('0000001', '3', 'Adele');
INSERT INTO 음반참여자 VALUES ('0000002', '3', '다이나믹 듀오');
INSERT INTO 음반참여자 VALUES ('0000003', '3', '버스커 버스커');
INSERT INTO 음반참여자 VALUES ('0000004', '3', '시나위');
INSERT INTO 음반참여자 VALUES ('0000005', '3', 'Linkin Park');
INSERT INTO 음반참여자 VALUES ('0000006', '3', 'Buzz');
INSERT INTO 음반참여자 VALUES ('0000007', '3', '클래지콰이');
INSERT INTO 음반참여자 VALUES ('0000008', '1', '김광진');
INSERT INTO 음반참여자 VALUES ('0000009', '3', '허각');
INSERT INTO 음반참여자 VALUES ('0000010', '3', '델리스파이스');

commit;









CREATE TABLE 악기( 
악기명 VARCHAR2(20),
악보일련번호 NUMBER(10),
           
 CONSTRAINT  악기_PK  PRIMARY KEY (악기명, 악보일련번호),	        
 CONSTRAINT  악기_FK  FOREIGN KEY(악보일련번호)
                  REFERENCES 악보(일련번호));


INSERT INTO 악기 VALUES ('기타','1010101');
INSERT INTO 악기 VALUES ('피아노','2010101');
INSERT INTO 악기 VALUES ('기타','3010101');
INSERT INTO 악기 VALUES ('기타','4010101');
INSERT INTO 악기 VALUES ('피아노','5010101');
INSERT INTO 악기 VALUES ('기타','6010101');
INSERT INTO 악기 VALUES ('기타','7010101');
INSERT INTO 악기 VALUES ('피아노','8010101');
INSERT INTO 악기 VALUES ('피아노','9010101');
INSERT INTO 악기 VALUES ('피아노','1010100');



commit;




CREATE TABLE 판매자 ( 
 사업자등록번호 NUMBER(10),
 총매출액 NUMBER(10),
 연락처 VARCHAR2(15) NOT NULL,
 아이디 VARCHAR2(16) NOT NULL,
 비밀번호 VARCHAR2(16) NOT NULL,
 계촤번호 VARCHAR2(15) NOT NULL,
 CONSTRAINT  판매자_PK  PRIMARY KEY (사업자등록번호),
 CONSTRAINT  판매자_UK UNIQUE(아이디));
 
 INSERT INTO 판매자 VALUES ('783784', '52000', '010-7711-4508', 'lsh4580', 'idwfqfq204','110-264-386102'); 
 INSERT INTO 판매자 VALUES ('883784', '52000', '010-7711-4508', 'sh4580', 'idwfq4244','110-263-314502'); 
 INSERT INTO 판매자 VALUES ('983784', '22000', '010-5637-4253', 'iop4580', 'iddfgfq214','110-274-246102'); 
 INSERT INTO 판매자 VALUES ('283784', '1000', '010-7711-4508', 'lh4580', 'idwfqfq21414','110-245-383462'); 
 INSERT INTO 판매자 VALUES ('763784', '60000', '010-6362-4534', 'zxc4580', 'iasfqfq5645','110-294-334602'); 
 INSERT INTO 판매자 VALUES ('783782', '100000', '010-6786-1242', 'xcv4580', 'idwfqfq7457','110-256-375726'); 
 INSERT INTO 판매자 VALUES ('783783', '2000', '010-8084-4508', 'bnm4580', 'idwfqfq4573','110-214-253622'); 
 INSERT INTO 판매자 VALUES ('783684', '6000', '010-7474-4508', 'fer4580', 'idwfqfq5235','110-245-252352'); 
 INSERT INTO 판매자 VALUES ('785784', '8000', '010-8282-4508', 'qwe4580', 'idwfqfq2352','110-254-526432'); 
 INSERT INTO 판매자 VALUES ('782784', '9000', '010-9292-4508', 'ijb4580', 'idwfqf3452','110-145-646736'); 

commit; 


CREATE TABLE  회원( 
 ID         VARCHAR2(16),
 PASSWORD       VARCHAR2(16) NOT NULL,
 EMail      VARCHAR2(30) NOT NULL, 
CONSTRAINT  회원_PK  PRIMARY KEY (ID),
CONSTRAINT  회원_UK  UNIQUE(EMail));

INSERT INTO 회원 VALUES ('lsh4580','eqwr114','lsh4580@hanmail.net');
INSERT INTO 회원 VALUES ('love','qwtqwt124','iop2480@naver.net');
INSERT INTO 회원 VALUES ('lyngirl','dsgsg5235','bgo2480@hanmir.net');
INSERT INTO 회원 VALUES ('hello','dfhdfh5325','number@hanmail.net');
INSERT INTO 회원 VALUES ('linkin','bsbgwet123','jkl2421@hanmail.net');
INSERT INTO 회원 VALUES ('iop2480','bigno23','klk5655@naver.net');
INSERT INTO 회원 VALUES ('kyh8890','qwrtq241','njm2141@hanmail.net');
INSERT INTO 회원 VALUES ('zzang','qrwsfq435','tyu2415@hanmail.net');
INSERT INTO 회원 VALUES ('hjk8580','ritopo422','njm454@naver.net');
INSERT INTO 회원 VALUES ('ert3580','qrqwr231','ios9009@naver.net');

commit;







CREATE TABLE 회원관심장르( 
이름         VARCHAR2(20),
회원ID  VARCHAR2(16),
           
 CONSTRAINT  회원관심장르_PK  PRIMARY KEY (이름, 회원ID),	        
 CONSTRAINT  회원관심장르_FK  FOREIGN KEY(회원ID)
                  REFERENCES 회원(ID));


INSERT INTO 회원관심장르 VALUES ('Pop','lsh4580');
INSERT INTO 회원관심장르 VALUES ('가요','love');
INSERT INTO 회원관심장르 VALUES ('Pop','lyngirl');
INSERT INTO 회원관심장르 VALUES ('클래식','hello');
INSERT INTO 회원관심장르 VALUES ('가요','linkin');
INSERT INTO 회원관심장르 VALUES ('가요','iop2480');
INSERT INTO 회원관심장르 VALUES ('가요','kyh8890');
INSERT INTO 회원관심장르 VALUES ('가요','zzang');
INSERT INTO 회원관심장르 VALUES ('가요','hjk8580');
INSERT INTO 회원관심장르 VALUES ('가요','ert3580');



commit;



CREATE TABLE 구매하다(
회원ID  VARCHAR2(16),
악보일련번호 NUMBER(10),
구매일자  DATE NOT NULL,
           
 CONSTRAINT  구매하다_PK  PRIMARY KEY (회원ID,악보일련번호),	        
 CONSTRAINT  구매하다_FK1  FOREIGN KEY(악보일련번호)
                  REFERENCES 악보(일련번호),
 CONSTRAINT  구매하다_FK2  FOREIGN KEY(회원ID)
                  REFERENCES 회원(ID));


INSERT INTO 구매하다 VALUES ('lsh4580','1010101',TO_DATE('2003/4/15','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('love','2010101',TO_DATE('2003/4/10','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('lyngirl','4010101',TO_DATE('2003/4/11','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('linkin','5010101',TO_DATE('2003/4/13','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('hello','5010101',TO_DATE('2003/4/14','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('iop2480','6010101',TO_DATE('2003/4/16','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('zzang','7010101',TO_DATE('2003/4/17','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('hjk8580','5010101',TO_DATE('2003/4/23','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('kyh8890','9010101',TO_DATE('2003/4/13','yyyy/mm/dd'));
INSERT INTO 구매하다 VALUES ('ert3580','5010101',TO_DATE('2003/4/13','yyyy/mm/dd'));

commit;

CREATE TABLE 평점을매기다(
ID  VARCHAR2(16),
악보일련번호 NUMBER(10),
날짜  DATE NOT NULL,
평점  NUMBER(1),
           
 CONSTRAINT  평점을매기다_PK  PRIMARY KEY (ID,악보일련번호),	        
 CONSTRAINT  평점을매기다_FK1  FOREIGN KEY(악보일련번호)
                  REFERENCES 악보(일련번호),
 CONSTRAINT  평점을매기다_FK2  FOREIGN KEY(ID)
                  REFERENCES 회원(ID));


INSERT INTO 평점을매기다 VALUES ('lsh4580','1010101',TO_DATE('2003/4/15','yyyy/mm/dd'), '5');
INSERT INTO 평점을매기다 VALUES ('love','2010101',TO_DATE('2003/4/10','yyyy/mm/dd'), '5');
INSERT INTO 평점을매기다 VALUES ('lyngirl','4010101',TO_DATE('2003/4/11','yyyy/mm/dd'), '5');
INSERT INTO 평점을매기다 VALUES ('linkin','5010101',TO_DATE('2003/4/13','yyyy/mm/dd'), '4');
INSERT INTO 평점을매기다 VALUES ('hello','5010101',TO_DATE('2003/4/14','yyyy/mm/dd'), '2');
INSERT INTO 평점을매기다 VALUES ('iop2480','6010101',TO_DATE('2003/4/16','yyyy/mm/dd'), '5');
INSERT INTO 평점을매기다 VALUES ('zzang','7010101',TO_DATE('2003/4/17','yyyy/mm/dd'), '4');
INSERT INTO 평점을매기다 VALUES ('hjk8580','5010101',TO_DATE('2003/4/23','yyyy/mm/dd'), '3');
INSERT INTO 평점을매기다 VALUES('kyh8890','9010101',TO_DATE('2003/4/13','yyyy/mm/dd'), '4');
INSERT INTO 평점을매기다 VALUES ('ert3580','5010101',TO_DATE('2003/4/13','yyyy/mm/dd'), '1');

commit;





CREATE TABLE 판매하다(
판매자등록번호  NUMBER(10),
악보일련번호 NUMBER(10),
           
 CONSTRAINT  판매하다_PK  PRIMARY KEY (판매자등록번호, 악보일련번호),	        
 CONSTRAINT  판매하다_FK1  FOREIGN KEY(판매자등록번호)
                  REFERENCES 판매자(사업자등록번호),
 CONSTRAINT  판매하다_FK2  FOREIGN KEY(악보일련번호)
                  REFERENCES 악보(일련번호));


INSERT INTO 판매하다 VALUES ('763784','1010101');
INSERT INTO 판매하다 VALUES ('783782','1010101');
INSERT INTO 판매하다 VALUES ('783783','1010101');
INSERT INTO 판매하다 VALUES ('785784','2010101');
INSERT INTO 판매하다 VALUES ('783684','1010101');
INSERT INTO 판매하다 VALUES ('782784','1010101');
INSERT INTO 판매하다 VALUES ('783784','5010101');
INSERT INTO 판매하다 VALUES ('983784','1010101');
INSERT INTO 판매하다 VALUES ('883784','7010101');
INSERT INTO 판매하다 VALUES ('283784','1010101');


commit;


CREATE TABLE 참여하다(
악보일련번호 NUMBER(10),
참여자ID VARCHAR2(20),
           
 CONSTRAINT  참여하다_PK  PRIMARY KEY (악보일련번호, 참여자ID),	        
 CONSTRAINT  참여하다_FK1  FOREIGN KEY(악보일련번호)
                  REFERENCES  악보(일련번호),
 CONSTRAINT  참여하다_FK2  FOREIGN KEY(참여자ID)
                  REFERENCES 음반참여자(ID));


INSERT INTO 참여하다 VALUES ('1010101','0000001');
INSERT INTO 참여하다 VALUES ('2010101','0000002');
INSERT INTO 참여하다 VALUES ('3010101','0000003');
INSERT INTO 참여하다 VALUES ('4010101','0000004');
INSERT INTO 참여하다 VALUES ('5010101','0000005');
INSERT INTO 참여하다 VALUES ('6010101','0000006');
INSERT INTO 참여하다 VALUES ('7010101','0000007');
INSERT INTO 참여하다 VALUES ('8010101','0000008');
INSERT INTO 참여하다 VALUES ('9010101','0000009');
INSERT INTO 참여하다 VALUES ('1010100','0000010');
commit;


CREATE TABLE 검색하다(
회원ID  VARCHAR2(16),
악보일련번호 NUMBER(10),
날짜 DATE NOT NULL,
장바구니저장유무  NUMBER(1),
WishList저장유무  NUMBER(1),
           
 CONSTRAINT  검색하다_PK  PRIMARY KEY (회원ID,악보일련번호),	        
 CONSTRAINT  검색하다_FK1  FOREIGN KEY(악보일련번호)
 	         REFERENCES 악보(일련번호),
 CONSTRAINT  검색하다_FK2  FOREIGN KEY(회원ID)
                  REFERENCES 회원(ID));


INSERT INTO 검색하다 VALUES ('lsh4580','1010101',TO_DATE('2003/4/15','yyyy/mm/dd'),0,1);
INSERT INTO 검색하다 VALUES ('love','2010101',TO_DATE('2003/4/10','yyyy/mm/dd'),1,1);
INSERT INTO 검색하다 VALUES ('lyngirl','4010101',TO_DATE('2003/4/11','yyyy/mm/dd'),0,1);
INSERT INTO 검색하다 VALUES ('linkin','5010101',TO_DATE('2003/4/13','yyyy/mm/dd'),1,1);
INSERT INTO 검색하다 VALUES ('hello','5010101',TO_DATE('2003/4/14','yyyy/mm/dd'),0,1);
INSERT INTO 검색하다 VALUES ('iop2480','6010101',TO_DATE('2003/4/16','yyyy/mm/dd'),1,1);
INSERT INTO 검색하다 VALUES ('zzang','7010101',TO_DATE('2003/4/17','yyyy/mm/dd'),1,1);
INSERT INTO 검색하다 VALUES ('hjk8580','5010101',TO_DATE('2003/4/23','yyyy/mm/dd'),0,1);
INSERT INTO 검색하다 VALUES ('kyh8890','9010101',TO_DATE('2003/4/13','yyyy/mm/dd'),1,1);
INSERT INTO 검색하다 VALUES ('ert3580','5010101',TO_DATE('2003/4/13','yyyy/mm/dd'),1,0);

commit;


