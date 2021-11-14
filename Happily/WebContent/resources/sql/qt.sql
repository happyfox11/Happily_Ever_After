show databases;


CREATE TABLE qt (
  q_no int(11) NOT NULL AUTO_INCREMENT,
  q_name varchar(30) NOT NULL,
  q_pw varchar(10) NOT NULL,
  q_memo varchar(500) NOT NULL,
  q_writeDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (q_no)
)DEFAULT CHARSET=utf8;

show tables;

desc qt;
drop table qt;
select * from qt;
delete from qt;

insert into qt (q_name, q_pw, q_memo)  VALUES('김길동','1234','하나님의 뜻이 거룩한 삶임을 기억하고 제 몸과 마음, 말과 행실이 더욱 거룩해지도록 도우소서. 조건 없는 사랑으로 저를 구원해 주신 은혜를 기억하며 날마다 주님의 사랑으로 이웃을 섬기게 하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('이길동','1234','잠시 겪는 고난에도 하나님을 신뢰하지 못하고 마음이 흔들리는 연약한 저를 긍휼히 여기소서. 예수 그리스도와 함께할 그날을 고대하며 어떤 고난도 달게 여기는 믿음을 허락하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('박길동','1234','제 삶과 인류의 역사를 세밀하게 주관하시는 신실하신 주님을 찬양합니다. 믿음의 사람들의 기도를 통해 이 땅에 주님의 사랑과 공의가 선명히 드러나고, 열방이 주님을 예배하게 하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('정길동','1234','제가 주인 되려는 교만을 내려놓고 하나님의 주권을 인정하며 모든 일에 겸손히 행하게 하소서. 고난을 통해 저를 낮추시더라도 하나님의 사람, 순종의 사람으로 온전히 빚어 주소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('홍길동','1234','세상의 모든 주권과 권세가 하나님 손안에 있음을 인정합니다. 세상이 주는 작은 기쁨에 만족하거나 안주하지 않게 하소서. 하나님만을 전적으로 의지하며 영원한 것을 소망하는 삶을 살게 하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('김길순','1234','연약한 죄인에게 사명을 주시고 감당할 힘과 은혜 또한 주시니 감사합니다. 인생의 크고 작은 문제 앞에서 낙심될 때 온전케 하시는 하나님의 도우심을 경험하고, 주어진 사명을 잘 감당하게 하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('이길순','1234','하나님의 말씀을 믿음으로 온전히 받아들이기 원합니다. 하나님이 주시는 평강과 담대함으로 불안과 염려를 물리치게 하소서. 주님의 약속을 신뢰함으로 임마누엘의 삶을 누리게 하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('박길순','1234','순종이 제사보다 낫다고 말씀하신 하나님, 불순종의 종착지는 고통과 눈물 골짜기임을 철저히 깨닫습니다. 삶의 작은 일에도 하나님을 신뢰하며 하나님 말씀에 순종하는 삶을 살게 하소서.');
insert into qt (q_name, q_pw, q_memo)  VALUES('정길순','1234','보잘것없는 죄인에게 크나큰 사랑을 베푸신 하나님, 삶에서 맞닥뜨리는 고난과 어려움에 낙심하지 않게 하소서. 저를 향한 하나님의 완전한 사랑을 기억하고 세상이 줄 수 없는 평안과 승리를 맛보게 하소서.');