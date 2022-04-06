set FOREIGN_KEY_CHECKS = 0;
truncate categories;
truncate images;
truncate movies;
truncate movies_categories;
truncate movies_country;
truncate movies_genre;
truncate categories;
set FOREIGN_KEY_CHECKS = 1;

INSERT INTO movies_country (country_name) VALUES ('한국');
INSERT INTO movies_country (country_name) VALUES ('미국');
INSERT INTO movies_country (country_name) VALUES ('일본');
INSERT INTO movies_country (country_name) VALUES ('캐나다');
INSERT INTO movies_country (country_name) VALUES ('중국');
INSERT INTO movies_country (country_name) VALUES ('프랑스');
INSERT INTO movies_country (country_name) VALUES ('대만');
INSERT INTO movies_country (country_name) VALUES ('영국');

INSERT INTO movies_genre (genre_name) VALUES ('로맨스');
INSERT INTO movies_genre (genre_name) VALUES ('액션');
INSERT INTO movies_genre (genre_name) VALUES ('스릴러');
INSERT INTO movies_genre (genre_name) VALUES ('SF');
INSERT INTO movies_genre (genre_name) VALUES ('판타지');

INSERT INTO movies (name,release_date,country_id,genre_id,story,run_time,age,poster_url) VALUES
('이별 후의 두 사람','2011/11/14',2,1,'차를 타고 시골길을 달리다 다투는 연인 혁과 이슬. 다툼은 거세지고 차를 멈추는 혁, 이슬에 게 차에서 내리라고 한다. 어이없어 하며 차에서 내리는 이슬과 떠나버리는 혁. 싸움을 하는 또 다른 커플이 있다. 이별여행을 다녀오는 동익과 선아. 그들도 사소한 이야기로 말다툼을 하다가 진상을 부리는 동익의 행동에 차에서 내려 도망가는 선아. 그녀를 쫓아가는 동익, 선아는 논에서 넘어지고 선아를 부추기려 하는데, 그 모습을 멀리서 보고 오해한 혁이가 동익에게 날라차기를 하는데..',100,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/1.png'),
('마이 러브 송','2000/12/23',4,1,'메가 히트작 <상견니> 가가연 주연!
모두의 기억과 사랑을 실어 보낼 꿈의 오디션이 시작된다!

대만 화련의 작은 고등학교에 기간제 교사로 부임한 `싱즈위안`은 노래에 천재적인 재능을 가진 `리동숴`를 만난다. 학생들이 자기만의 재능을 찾기를 바란 `싱즈위안`은 피아노 레슨을 하는 `위징`과 함께 `리동숴`를 대만 최고의 오디션 프로그램에 참가시키기로 한다. 오디션을 준비하며 세 사람은 서로의 상처와 비밀을 털어놓으며 저마다의 사랑과 설렘을 키워 나가는데… 

“네 마음을 노래해줘, 너와 나눈 모든 기억을”',102,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/2.png'),
('서울의 연인들','2002/1/4',1,1,'사랑은 꿈이고 환상이다. 
그리고 넘을 수 없는 장벽에 대한 도전이다. 

로맨틱 순정 멜로 ""파리의 연인""은 파리라는 꿈의 도시에서 특별한 인연을 맺은두 남자와 한 여자를 통해 누구나 한번쯤 꿈꾸어 본 사랑을 달콤하고 로맨틱하게 체험시켜줄 것이다.',140,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/3.png'),
('두근두근 우리 인생','2013/3/6',6,1,'한 때 헛발 왕자로 불리던 태권도 유망주 ‘대수’와 아이돌을 꿈꾸던 당찬 성격의 ‘미라’. 하지만 17살에 아이를 가져 불과 서른 셋의 나이에 16살 아들 ‘아름’이의 부모가 되어 있다. 남들보다 빨리 늙는 선천성 조로증인 아름이의 신체 나이는 여든 살. 어리고 철없는 부모지만 대수와 미라는 아름이와 씩씩하고 밝게 살아간다. 그러던 어느 날 그들의 사연이 세상에 알려지고, 하루하루 늙어가는 것이 전부였던 아름이에게 두근거리는 일들이 생기기 시작하는데...',203,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/4.png'),
('거제도의 푸른 하늘','1999/1/9',1,1,'전직검사인 송국진은 사재를 털어 우범소년들의 수용기관인 희망자율원을 운영한다. 일인 일기 교육을 위해 여순경 김성숙이 파견되나 원생들에게 수난을 당한다. 여순경은 음악반을 지도하고 자신도 고아원출신이라는 사실로 소년들은 용기를 갖고 노력하여 전국신인악단 경영대회에 출전키로 한다. 그러나 김순경에게 애정을 느낀 희석이 악기를 부수고 도주해 버린다. 김순경은 부모의 애정임을 확인시켜 주고 꿈을 이루도록 도와준다. 마침내 경연대회에서 일등을 하고 뜻있는 재미교포의 후원으로 하와이로 떠나게 된다. 김순경도 계속 재활원에 남아 있기로 하고 송국진과 사랑을 한다.',121,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/5.png'),
('낮에 생긴 일','1992/4/8',6,1,'두 아이와 곧 그 아이들의 새엄마가 될 여자, 세 명은 휴일을 즐기기 위해 외딴 별장으로 향한다. 하지만 그들은 예상치 못한 폭설에 발이 묶이게 되고 그들 셋을 에워싼 관계의 긴장감은 모든 상황을 얼어붙게 만들어 버린다.',231,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/6.png'),
('세상에서 가장 슬픈 이별','1993/3/8',3,1,'서로 맞지 않는 연애를 하며 서로에게 상처를 입은 해랑과 미오, 그리고 연우와 병대. 숲 속에서 두 커플이 싸우고, 우연한 기회로 해랑과 연우가 만나게 되고, 미오와 병 대가 만나게 된다. 의미심장한 해랑과 미오… 과연 연인들의 다툼이 있던 숲 속에서는 평 화가 찾아올 수 있을까',242,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/7.png'),
('런던 스카이','2011/4/5',8,1,'고등학교 시절 리싱은 매일 차오차오의 도시락을 자신의 도시락과 몰래 바꾼다. 차오차오가 자신이 만든 도시락을 맛있게 먹는 것만으로도 행복한 리싱.  수줍은 고백, 두근두근 첫 키스, 첫 기념일. 모든 것을 처음으로 함께 경험한 리싱과 차오차오 커플은 차오차오의 갑작스러운 이별 통보로  5년간의 이별계약 기간을 두고 헤어지게 된다.  5년 후에도 솔로라면 결혼을 하자는 마지막 약속. 그러나 5년의 계약기간이 끝나갈 무렵, 리싱은 차오차오에게 갑작스러운 결혼 소식을 전하는데….',113,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/8.png'),
('시작은 허그!','2013/12/15',1,1,'결혼을 앞두고 있던 가람(권유리)과 선재(현우)에게 갑작스레 찾아온 교통사고. 그 사고로 선재는 혼수상태에 빠지고, 가람은 목숨을잃고 만다. 이승을 떠난 가람은 알 수 없는 공간에 가게 되고, 그곳에서 정체를 알 수 없는 남자 엑스(윤지온)에게 이해하기 힘든 제안을 받게 된다. 일주일 전으로 시간을 돌려줄 테니, 선재를 살리고 싶다면 일주일 안에 그와 완전히 헤어지라는 것. 

그렇게 일주일 전으로 돌아가게 되는 가람. 가람은 평생을 함께 하기로 약속했던 선재에게 이별을 말해야만 한다. 그러나 그제서야 무신경한 행동과 말투 속에 숨어 있던 선재의 진심과 배려들이 가람의 눈에 들어오기 시작한다. 선재가 사랑을 지키기 위해 홀로 싸워 왔던 애틋한 흔적들을 너무 늦게 마주하고 만다. 이별의 핑계를 찾아내야만 하는데, 시간이 갈수록 차마 이별할 수 없는 이유들만 가득해진다. 가람은 선재와의 이별에 성공하고 그를 살려낼 수 있을까?',50,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/9.png'),
('노력과 포기 사이','2014/7/7',3,1,'갑작스럽게 카톡 이별을 당한 요리사 해진은 그리스 스코펠로스 섬으로 떠난다. 여름 휴가 때 함께 오기로 약속했던 바로 그 섬이다. 해진은 이곳에서 이별식당이라는 한식당을 개업하고 이별을 앞둔 커플들의 마지막 작별을 위해 정성껏 음식을 만들어 이들을 위로한다.

그러던 어느 날 그리스 소녀 일레니가 찾아오고... 그는 또다시 사랑에 빠진다.',102,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/10.png'),
('하늘을 향해','2021/1/31',6,1,'1980년 8월 13일 80세계 복음화 대회에 미국에서부터 대구로 해서 서울에 올라온 당년 70세의 김병섭 장로와 전 연대총장 박대선 박사가 오랜만에 만나 여의도 광장에서 30년전에 북한에서 공산당에게 당했던 일들을 회상하게 된다. 일제말 평양에서 신사참배 불응으로 순교의 제물이 된 주기철 목사의 맏아들 주영진 전도사가 철장된 산정교회에 오게 된다. 8.15해방이 되던날 주동진은 교회로 달려가 못질한 판자를 뜯어내고 아버지의 충정을 회상하게 된다. 주영진은 당대의 거물인 김화식목사를 찾아 갔으나 김목사는 교회재건 보다 더욱 시급한 것은 무신론자이며 유물론자로서 공산당의 앞날의 행패를 견제하는 것이 급선무나 그것이 실패하면 산사람이라도 남으로 피난을 시키는 것이 급선무라는 권고를 받는다. 주영진의 친구 장익수는 북괴앞잡이로 종교탄압의 만행을 부리다 기독교정신에 감화되어 기독교인들을 월남시키는데 힘을 기울인다.',223,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/11.png'),
('너와의 시간','2014/2/5',2,1,'남편과 아들을 살해한 혐의로 체포된 미희는 25년의 수감 생활 후, 사건이 발생한 그 집으로 돌아온다. 유일하게 미희를 믿는 최신부는 그녀를 찾아가 진실을 묻지만, 미희는 ‘그들이 남편을 죽이고, 아이를 데려갔다’는 말만을 되풀이한다. 사건의 진실을 파헤치던 최신부는 그 집에 무언가 있다고 확신하게 된다. 최신부가 집을 떠날 것을 경고한 그날 밤, 홀로 남은 미희는 25년 전 그날처럼 집 안에 또 다른 누군가가 있음을 깨닫는데…',130,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/12.png'),
('아웃사이드 트윈','2016/3/7',6,2,'뜨거운 태양이 내리쬐는 한여름, 파티에 모인 혈기 왕성한 7명의 남녀가 ‘게임 오브 데스’라는 오래된 보드게임을 시작한다. 게임의 유일한 규칙은 제한시간 내에 죽거나 죽이는 것! 절대 벗어날 수 없는 룰 앞에 그들의 잔인한 본성도 깨어나기 시작하는데…

과연 최후의 생존자는 누구일까?
마지막 한 명만 살아남는 지옥의 데스 매치 START!',232,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/13.png'),
('C컷','2019/3/26',4,2,'비밀스러운 과거를 간직한 ‘정환’, 과거를 정리하기 위해 찾아간 외딴섬에서 또 다른 여행객들과 마주하게 된다. 모두 함께 머물게 된 게스트하우스에서 ‘정환’ 홀로 묘한 분위기를 느끼고 주인 남자를 경계하지만 어느새 그들의 표적이 된 자신을 발견하게 된다. 위험한 상황에서 가까스로 탈출하는 데 성공한 순간 또 다른 의문의 존재와 맞서 필사의 사투를 벌이게 되는데…

섬의 위험한 비밀을 파헤치는 순간, 
광기의 추격이 시작된다!',242,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/14.png'),
('드라이버','2011/12/4',3,2,'한물간 퇴물 격투기 선수 `마이크`. 아픈 딸의 수술비로 허덕이는 교도관 `에릭슨`. 두 사람은 폭파가 예정된 `캐슬 하이츠 병원`에 300만 달러의 거금이 숨겨져 있다는 사실을 알게 된다.

각자의 사정으로 돈을 차지하기 위해 건물에 들어선 두 사람. 하지만 돈을 노린 `디콘`과 그의 범죄 조직원들이 나타나 그들을 방해하기 시작하는데...

폭파까지 단 8시간, 캐슬이 무너지기 전에
숨겨진 300만 달러를 찾아야 한다!',252,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/15.png'),
('썬','2020/7/8',6,2,'메가 히트작 <상견니> 가가연 주연!
모두의 기억과 사랑을 실어 보낼 꿈의 오디션이 시작된다!

대만 화련의 작은 고등학교에 기간제 교사로 부임한 `싱즈위안`은 노래에 천재적인 재능을 가진 `리동숴`를 만난다. 학생들이 자기만의 재능을 찾기를 바란 `싱즈위안`은 피아노 레슨을 하는 `위징`과 함께 `리동숴`를 대만 최고의 오디션 프로그램에 참가시키기로 한다. 오디션을 준비하며 세 사람은 서로의 상처와 비밀을 털어놓으며 저마다의 사랑과 설렘을 키워 나가는데… 

“네 마음을 노래해줘, 너와 나눈 모든 기억을”',232,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/16.png'),
('총공격','2010/5/5',2,2,'사랑은 꿈이고 환상이다. 
그리고 넘을 수 없는 장벽에 대한 도전이다. 

로맨틱 순정 멜로 ""파리의 연인""은 파리라는 꿈의 도시에서 특별한 인연을 맺은두 남자와 한 여자를 통해 누구나 한번쯤 꿈꾸어 본 사랑을 달콤하고 로맨틱하게 체험시켜줄 것이다.',263,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/17.png'),
('퍼플라이트','2009/2/6',6,2,'한 때 헛발 왕자로 불리던 태권도 유망주 ‘대수’와 아이돌을 꿈꾸던 당찬 성격의 ‘미라’. 하지만 17살에 아이를 가져 불과 서른 셋의 나이에 16살 아들 ‘아름’이의 부모가 되어 있다. 남들보다 빨리 늙는 선천성 조로증인 아름이의 신체 나이는 여든 살. 어리고 철없는 부모지만 대수와 미라는 아름이와 씩씩하고 밝게 살아간다. 그러던 어느 날 그들의 사연이 세상에 알려지고, 하루하루 늙어가는 것이 전부였던 아름이에게 두근거리는 일들이 생기기 시작하는데...',252,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/18.png'),
('특급배송','2008/6/5',3,2,'전직검사인 송국진은 사재를 털어 우범소년들의 수용기관인 희망자율원을 운영한다. 일인 일기 교육을 위해 여순경 김성숙이 파견되나 원생들에게 수난을 당한다. 여순경은 음악반을 지도하고 자신도 고아원출신이라는 사실로 소년들은 용기를 갖고 노력하여 전국신인악단 경영대회에 출전키로 한다. 그러나 김순경에게 애정을 느낀 희석이 악기를 부수고 도주해 버린다. 김순경은 부모의 애정임을 확인시켜 주고 꿈을 이루도록 도와준다. 마침내 경연대회에서 일등을 하고 뜻있는 재미교포의 후원으로 하와이로 떠나게 된다. 김순경도 계속 재활원에 남아 있기로 하고 송국진과 사랑을 한다.',242,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/19.png'),
('경찰 : 더 비기닝','2007/4/8',1,2,'두 아이와 곧 그 아이들의 새엄마가 될 여자, 세 명은 휴일을 즐기기 위해 외딴 별장으로 향한다. 하지만 그들은 예상치 못한 폭설에 발이 묶이게 되고 그들 셋을 에워싼 관계의 긴장감은 모든 상황을 얼어붙게 만들어 버린다.',112,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/20.png'),
('통제의 시대','2002/3/6',2,2,'서로 맞지 않는 연애를 하며 서로에게 상처를 입은 해랑과 미오, 그리고 연우와 병대. 숲 속에서 두 커플이 싸우고, 우연한 기회로 해랑과 연우가 만나게 되고, 미오와 병 대가 만나게 된다. 의미심장한 해랑과 미오… 과연 연인들의 다툼이 있던 숲 속에서는 평 화가 찾아올 수 있을까',142,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/21.png'),
('탐정교실','2011/4/7',3,2,'한물간 퇴물 격투기 선수 `마이크`. 아픈 딸의 수술비로 허덕이는 교도관 `에릭슨`. 두 사람은 폭파가 예정된 `캐슬 하이츠 병원`에 300만 달러의 거금이 숨겨져 있다는 사실을 알게 된다.

각자의 사정으로 돈을 차지하기 위해 건물에 들어선 두 사람. 하지만 돈을 노린 `디콘`과 그의 범죄 조직원들이 나타나 그들을 방해하기 시작하는데...

폭파까지 단 8시간, 캐슬이 무너지기 전에
숨겨진 300만 달러를 찾아야 한다!',124,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/22.png'),
('구조묘 루루','1996/12/6',2,2,'“가자, 보물 찾으러!”

자칭 고려 제일검인 의적단 두목 `무치`(강하늘)와 바다를 평정한 해적선의 주인 `해랑`(한효주). 한 배에서 운명을 함께하게 된 이들이지만 산과 바다, 태생부터 상극으로 사사건건 부딪히며 바람 잘 날 없는 항해를 이어간다. 

그러던 어느 날, 왜구선을 소탕하던 이들은 흔적도 없이 사라진 왕실의 보물이 어딘가 숨겨져 있다는 사실을 알게 되고 해적 인생에 다시없을 최대 규모의 보물을 찾아 위험천만한 모험에 나서기 시작한다.
 
하지만 사라진 보물을 노리는 건 이들뿐만이 아니었으니! 원하는 것을 얻기 위해 수단과 방법을 가리지 않는 역적 `부흥수`(권상우)또한 보물을 차지하기 위해 바다에 뛰어드는데...! ',112,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/23.png'),
('패왕불패','1995/11/17',3,2,'갑작스럽게 카톡 이별을 당한 요리사 해진은 그리스 스코펠로스 섬으로 떠난다. 여름 휴가 때 함께 오기로 약속했던 바로 그 섬이다. 해진은 이곳에서 이별식당이라는 한식당을 개업하고 이별을 앞둔 커플들의 마지막 작별을 위해 정성껏 음식을 만들어 이들을 위로한다.

그러던 어느 날 그리스 소녀 일레니가 찾아오고... 그는 또다시 사랑에 빠진다.',102,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/24.png'),
('bandit : 숨겨진 보물','2017/1/7',1,2,'“가자, 보물 찾으러!”

자칭 고려 제일검인 의적단 두목 `무치`(강하늘)와 바다를 평정한 해적선의 주인 `해랑`(한효주). 한 배에서 운명을 함께하게 된 이들이지만 산과 바다, 태생부터 상극으로 사사건건 부딪히며 바람 잘 날 없는 항해를 이어간다. 

그러던 어느 날, 왜구선을 소탕하던 이들은 흔적도 없이 사라진 왕실의 보물이 어딘가 숨겨져 있다는 사실을 알게 되고 해적 인생에 다시없을 최대 규모의 보물을 찾아 위험천만한 모험에 나서기 시작한다.
 
하지만 사라진 보물을 노리는 건 이들뿐만이 아니었으니! 원하는 것을 얻기 위해 수단과 방법을 가리지 않는 역적 `부흥수`(권상우)또한 보물을 차지하기 위해 바다에 뛰어드는데...! ',232,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/25.png'),
('미제사건','2006/2/7',4,3,'사랑은 꿈이고 환상이다. 
그리고 넘을 수 없는 장벽에 대한 도전이다. 

로맨틱 순정 멜로 ""파리의 연인""은 파리라는 꿈의 도시에서 특별한 인연을 맺은두 남자와 한 여자를 통해 누구나 한번쯤 꿈꾸어 본 사랑을 달콤하고 로맨틱하게 체험시켜줄 것이다.',66,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/26.png'),
('내 가방 안의 악마','2005/3/5',6,3,'한 때 헛발 왕자로 불리던 태권도 유망주 ‘대수’와 아이돌을 꿈꾸던 당찬 성격의 ‘미라’. 하지만 17살에 아이를 가져 불과 서른 셋의 나이에 16살 아들 ‘아름’이의 부모가 되어 있다. 남들보다 빨리 늙는 선천성 조로증인 아름이의 신체 나이는 여든 살. 어리고 철없는 부모지만 대수와 미라는 아름이와 씩씩하고 밝게 살아간다. 그러던 어느 날 그들의 사연이 세상에 알려지고, 하루하루 늙어가는 것이 전부였던 아름이에게 두근거리는 일들이 생기기 시작하는데...',209,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/27.png'),
('나인 센스','2011/4/8',1,3,'전직검사인 송국진은 사재를 털어 우범소년들의 수용기관인 희망자율원을 운영한다. 일인 일기 교육을 위해 여순경 김성숙이 파견되나 원생들에게 수난을 당한다. 여순경은 음악반을 지도하고 자신도 고아원출신이라는 사실로 소년들은 용기를 갖고 노력하여 전국신인악단 경영대회에 출전키로 한다. 그러나 김순경에게 애정을 느낀 희석이 악기를 부수고 도주해 버린다. 김순경은 부모의 애정임을 확인시켜 주고 꿈을 이루도록 도와준다. 마침내 경연대회에서 일등을 하고 뜻있는 재미교포의 후원으로 하와이로 떠나게 된다. 김순경도 계속 재활원에 남아 있기로 하고 송국진과 사랑을 한다.',112,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/28.png'),
('아침의 특별한 저주','1994/3/12',3,3,'두 아이와 곧 그 아이들의 새엄마가 될 여자, 세 명은 휴일을 즐기기 위해 외딴 별장으로 향한다. 하지만 그들은 예상치 못한 폭설에 발이 묶이게 되고 그들 셋을 에워싼 관계의 긴장감은 모든 상황을 얼어붙게 만들어 버린다.',242,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/29.png'),
('미시시피 사건','1998/10/14',2,3,'서로 맞지 않는 연애를 하며 서로에게 상처를 입은 해랑과 미오, 그리고 연우와 병대. 숲 속에서 두 커플이 싸우고, 우연한 기회로 해랑과 연우가 만나게 되고, 미오와 병 대가 만나게 된다. 의미심장한 해랑과 미오… 과연 연인들의 다툼이 있던 숲 속에서는 평 화가 찾아올 수 있을까',252,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/30.png'),
('피의자Q','1996/5/6',5,3,'고등학교 시절 리싱은 매일 차오차오의 도시락을 자신의 도시락과 몰래 바꾼다. 차오차오가 자신이 만든 도시락을 맛있게 먹는 것만으로도 행복한 리싱.  수줍은 고백, 두근두근 첫 키스, 첫 기념일. 모든 것을 처음으로 함께 경험한 리싱과 차오차오 커플은 차오차오의 갑작스러운 이별 통보로  5년간의 이별계약 기간을 두고 헤어지게 된다.  5년 후에도 솔로라면 결혼을 하자는 마지막 약속. 그러나 5년의 계약기간이 끝나갈 무렵, 리싱은 차오차오에게 갑작스러운 결혼 소식을 전하는데….',52,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/31.png'),
('맨 인 더 룸 3','1995/6/5',2,3,'결혼을 앞두고 있던 가람(권유리)과 선재(현우)에게 갑작스레 찾아온 교통사고. 그 사고로 선재는 혼수상태에 빠지고, 가람은 목숨을잃고 만다. 이승을 떠난 가람은 알 수 없는 공간에 가게 되고, 그곳에서 정체를 알 수 없는 남자 엑스(윤지온)에게 이해하기 힘든 제안을 받게 된다. 일주일 전으로 시간을 돌려줄 테니, 선재를 살리고 싶다면 일주일 안에 그와 완전히 헤어지라는 것. 

그렇게 일주일 전으로 돌아가게 되는 가람. 가람은 평생을 함께 하기로 약속했던 선재에게 이별을 말해야만 한다. 그러나 그제서야 무신경한 행동과 말투 속에 숨어 있던 선재의 진심과 배려들이 가람의 눈에 들어오기 시작한다. 선재가 사랑을 지키기 위해 홀로 싸워 왔던 애틋한 흔적들을 너무 늦게 마주하고 만다. 이별의 핑계를 찾아내야만 하는데, 시간이 갈수록 차마 이별할 수 없는 이유들만 가득해진다. 가람은 선재와의 이별에 성공하고 그를 살려낼 수 있을까?',201,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/32.png'),
('특별한 힘','1994/2/6',1,3,'갑작스럽게 카톡 이별을 당한 요리사 해진은 그리스 스코펠로스 섬으로 떠난다. 여름 휴가 때 함께 오기로 약속했던 바로 그 섬이다. 해진은 이곳에서 이별식당이라는 한식당을 개업하고 이별을 앞둔 커플들의 마지막 작별을 위해 정성껏 음식을 만들어 이들을 위로한다.

그러던 어느 날 그리스 소녀 일레니가 찾아오고... 그는 또다시 사랑에 빠진다.',211,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/33.png'),
('30년 후','1992/2/23',3,3,'1980년 8월 13일 80세계 복음화 대회에 미국에서부터 대구로 해서 서울에 올라온 당년 70세의 김병섭 장로와 전 연대총장 박대선 박사가 오랜만에 만나 여의도 광장에서 30년전에 북한에서 공산당에게 당했던 일들을 회상하게 된다. 일제말 평양에서 신사참배 불응으로 순교의 제물이 된 주기철 목사의 맏아들 주영진 전도사가 철장된 산정교회에 오게 된다. 8.15해방이 되던날 주동진은 교회로 달려가 못질한 판자를 뜯어내고 아버지의 충정을 회상하게 된다. 주영진은 당대의 거물인 김화식목사를 찾아 갔으나 김목사는 교회재건 보다 더욱 시급한 것은 무신론자이며 유물론자로서 공산당의 앞날의 행패를 견제하는 것이 급선무나 그것이 실패하면 산사람이라도 남으로 피난을 시키는 것이 급선무라는 권고를 받는다. 주영진의 친구 장익수는 북괴앞잡이로 종교탄압의 만행을 부리다 기독교정신에 감화되어 기독교인들을 월남시키는데 힘을 기울인다.',232,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/34.png'),
('블루','1993/2/5',1,3,'남편과 아들을 살해한 혐의로 체포된 미희는 25년의 수감 생활 후, 사건이 발생한 그 집으로 돌아온다. 유일하게 미희를 믿는 최신부는 그녀를 찾아가 진실을 묻지만, 미희는 ‘그들이 남편을 죽이고, 아이를 데려갔다’는 말만을 되풀이한다. 사건의 진실을 파헤치던 최신부는 그 집에 무언가 있다고 확신하게 된다. 최신부가 집을 떠날 것을 경고한 그날 밤, 홀로 남은 미희는 25년 전 그날처럼 집 안에 또 다른 누군가가 있음을 깨닫는데…',234,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/35.png'),
('좀비들의 밤','2010/1/5',7,3,'뜨거운 태양이 내리쬐는 한여름, 파티에 모인 혈기 왕성한 7명의 남녀가 ‘게임 오브 데스’라는 오래된 보드게임을 시작한다. 게임의 유일한 규칙은 제한시간 내에 죽거나 죽이는 것! 절대 벗어날 수 없는 룰 앞에 그들의 잔인한 본성도 깨어나기 시작하는데…

과연 최후의 생존자는 누구일까?
마지막 한 명만 살아남는 지옥의 데스 매치 START!',190,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/36.png'),
('리액트맨 2','2019/12/3',2,4,'비밀스러운 과거를 간직한 ‘정환’, 과거를 정리하기 위해 찾아간 외딴섬에서 또 다른 여행객들과 마주하게 된다. 모두 함께 머물게 된 게스트하우스에서 ‘정환’ 홀로 묘한 분위기를 느끼고 주인 남자를 경계하지만 어느새 그들의 표적이 된 자신을 발견하게 된다. 위험한 상황에서 가까스로 탈출하는 데 성공한 순간 또 다른 의문의 존재와 맞서 필사의 사투를 벌이게 되는데…

섬의 위험한 비밀을 파헤치는 순간, 
광기의 추격이 시작된다!',40,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/37.png'),
('잃어버린 이야기','2020/10/15',7,4,'한물간 퇴물 격투기 선수 `마이크`. 아픈 딸의 수술비로 허덕이는 교도관 `에릭슨`. 두 사람은 폭파가 예정된 `캐슬 하이츠 병원`에 300만 달러의 거금이 숨겨져 있다는 사실을 알게 된다.

각자의 사정으로 돈을 차지하기 위해 건물에 들어선 두 사람. 하지만 돈을 노린 `디콘`과 그의 범죄 조직원들이 나타나 그들을 방해하기 시작하는데...

폭파까지 단 8시간, 캐슬이 무너지기 전에
숨겨진 300만 달러를 찾아야 한다!',44,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/38.png'),
('트래픽2003','2011/10/3',2,4,'메가 히트작 <상견니> 가가연 주연!
모두의 기억과 사랑을 실어 보낼 꿈의 오디션이 시작된다!

대만 화련의 작은 고등학교에 기간제 교사로 부임한 `싱즈위안`은 노래에 천재적인 재능을 가진 `리동숴`를 만난다. 학생들이 자기만의 재능을 찾기를 바란 `싱즈위안`은 피아노 레슨을 하는 `위징`과 함께 `리동숴`를 대만 최고의 오디션 프로그램에 참가시키기로 한다. 오디션을 준비하며 세 사람은 서로의 상처와 비밀을 털어놓으며 저마다의 사랑과 설렘을 키워 나가는데… 

“네 마음을 노래해줘, 너와 나눈 모든 기억을”',203,15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/39.png'),
('이상한 나라의 공학자','2003/2/3',1,4,'사랑은 꿈이고 환상이다.그리고 넘을 수 없는 장벽에 대한 도전이다.
로맨틱 순정 멜로 ""파리의 연인""은 파리라는 꿈의 도시에서 특별한 인연을 맺은두 남자와 한 여자를 통해 누구나 한번쯤 꿈꾸어 본 사랑을 달콤하고 로맨틱하게 체험시켜줄 것이다.',140,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/40.png'),
('199 아이덴티티','2001/1/5',4,4,'메가 히트작 <상견니> 가가연 주연!
모두의 기억과 사랑을 실어 보낼 꿈의 오디션이 시작된다!

대만 화련의 작은 고등학교에 기간제 교사로 부임한 `싱즈위안`은 노래에 천재적인 재능을 가진 `리동숴`를 만난다. 학생들이 자기만의 재능을 찾기를 바란 `싱즈위안`은 피아노 레슨을 하는 `위징`과 함께 `리동숴`를 대만 최고의 오디션 프로그램에 참가시키기로 한다. 오디션을 준비하며 세 사람은 서로의 상처와 비밀을 털어놓으며 저마다의 사랑과 설렘을 키워 나가는데… 

“네 마음을 노래해줘, 너와 나눈 모든 기억을”',241,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/41.png'),
('프로젝트 FE','2019/11/3',7,4,'사랑은 꿈이고 환상이다. 
그리고 넘을 수 없는 장벽에 대한 도전이다. 

로맨틱 순정 멜로 ""파리의 연인""은 파리라는 꿈의 도시에서 특별한 인연을 맺은두 남자와 한 여자를 통해 누구나 한번쯤 꿈꾸어 본 사랑을 달콤하고 로맨틱하게 체험시켜줄 것이다.',111,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/42.png'),
('코스모스 판타지아','2014/2/19',1,5,'한 때 헛발 왕자로 불리던 태권도 유망주 ‘대수’와 아이돌을 꿈꾸던 당찬 성격의 ‘미라’. 하지만 17살에 아이를 가져 불과 서른 셋의 나이에 16살 아들 ‘아름’이의 부모가 되어 있다. 남들보다 빨리 늙는 선천성 조로증인 아름이의 신체 나이는 여든 살. 어리고 철없는 부모지만 대수와 미라는 아름이와 씩씩하고 밝게 살아간다. 그러던 어느 날 그들의 사연이 세상에 알려지고, 하루하루 늙어가는 것이 전부였던 아름이에게 두근거리는 일들이 생기기 시작하는데...',126,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/43.png'),
('노비스의 추억','2011/11/16',4,5,'전직검사인 송국진은 사재를 털어 우범소년들의 수용기관인 희망자율원을 운영한다. 일인 일기 교육을 위해 여순경 김성숙이 파견되나 원생들에게 수난을 당한다. 여순경은 음악반을 지도하고 자신도 고아원출신이라는 사실로 소년들은 용기를 갖고 노력하여 전국신인악단 경영대회에 출전키로 한다. 그러나 김순경에게 애정을 느낀 희석이 악기를 부수고 도주해 버린다. 김순경은 부모의 애정임을 확인시켜 주고 꿈을 이루도록 도와준다. 마침내 경연대회에서 일등을 하고 뜻있는 재미교포의 후원으로 하와이로 떠나게 된다. 김순경도 계속 재활원에 남아 있기로 하고 송국진과 사랑을 한다.',121,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/44.png'),
('언더스카이블루 3','2014/2/25',2,5,'두 아이와 곧 그 아이들의 새엄마가 될 여자, 세 명은 휴일을 즐기기 위해 외딴 별장으로 향한다. 하지만 그들은 예상치 못한 폭설에 발이 묶이게 되고 그들 셋을 에워싼 관계의 긴장감은 모든 상황을 얼어붙게 만들어 버린다.',111,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/45.png'),
('극장판 비우스의 문','2015/5/5',2,5,'서로 맞지 않는 연애를 하며 서로에게 상처를 입은 해랑과 미오, 그리고 연우와 병대. 숲 속에서 두 커플이 싸우고, 우연한 기회로 해랑과 연우가 만나게 되고, 미오와 병 대가 만나게 된다. 의미심장한 해랑과 미오… 과연 연인들의 다툼이 있던 숲 속에서는 평 화가 찾아올 수 있을까',105,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/46.png'),
('덕수도이야기','2019/2/6',1,5,'고등학교 시절 리싱은 매일 차오차오의 도시락을 자신의 도시락과 몰래 바꾼다. 차오차오가 자신이 만든 도시락을 맛있게 먹는 것만으로도 행복한 리싱.  수줍은 고백, 두근두근 첫 키스, 첫 기념일. 모든 것을 처음으로 함께 경험한 리싱과 차오차오 커플은 차오차오의 갑작스러운 이별 통보로  5년간의 이별계약 기간을 두고 헤어지게 된다.  5년 후에도 솔로라면 결혼을 하자는 마지막 약속. 그러나 5년의 계약기간이 끝나갈 무렵, 리싱은 차오차오에게 갑작스러운 결혼 소식을 전하는데….',80,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/47.png'),
('비밀게임','2014/2/6',4,5,'결혼을 앞두고 있던 가람(권유리)과 선재(현우)에게 갑작스레 찾아온 교통사고. 그 사고로 선재는 혼수상태에 빠지고, 가람은 목숨을잃고 만다. 이승을 떠난 가람은 알 수 없는 공간에 가게 되고, 그곳에서 정체를 알 수 없는 남자 엑스(윤지온)에게 이해하기 힘든 제안을 받게 된다. 일주일 전으로 시간을 돌려줄 테니, 선재를 살리고 싶다면 일주일 안에 그와 완전히 헤어지라는 것. 

그렇게 일주일 전으로 돌아가게 되는 가람. 가람은 평생을 함께 하기로 약속했던 선재에게 이별을 말해야만 한다. 그러나 그제서야 무신경한 행동과 말투 속에 숨어 있던 선재의 진심과 배려들이 가람의 눈에 들어오기 시작한다. 선재가 사랑을 지키기 위해 홀로 싸워 왔던 애틋한 흔적들을 너무 늦게 마주하고 만다. 이별의 핑계를 찾아내야만 하는데, 시간이 갈수록 차마 이별할 수 없는 이유들만 가득해진다. 가람은 선재와의 이별에 성공하고 그를 살려낼 수 있을까?',77,0,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/48.png'),
('오리모의 나무','2019/4/11',2,5,'갑작스럽게 카톡 이별을 당한 요리사 해진은 그리스 스코펠로스 섬으로 떠난다. 여름 휴가 때 함께 오기로 약속했던 바로 그 섬이다. 해진은 이곳에서 이별식당이라는 한식당을 개업하고 이별을 앞둔 커플들의 마지막 작별을 위해 정성껏 음식을 만들어 이들을 위로한다.

그러던 어느 날 그리스 소녀 일레니가 찾아오고... 그는 또다시 사랑에 빠진다.',50,12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/49.png'),
('불의 여왕','2018/9/4',4,5,'1980년 8월 13일 80세계 복음화 대회에 미국에서부터 대구로 해서 서울에 올라온 당년 70세의 김병섭 장로와 전 연대총장 박대선 박사가 오랜만에 만나 여의도 광장에서 30년전에 북한에서 공산당에게 당했던 일들을 회상하게 된다. 일제말 평양에서 신사참배 불응으로 순교의 제물이 된 주기철 목사의 맏아들 주영진 전도사가 철장된 산정교회에 오게 된다. 8.15해방이 되던날 주동진은 교회로 달려가 못질한 판자를 뜯어내고 아버지의 충정을 회상하게 된다. 주영진은 당대의 거물인 김화식목사를 찾아 갔으나 김목사는 교회재건 보다 더욱 시급한 것은 무신론자이며 유물론자로서 공산당의 앞날의 행패를 견제하는 것이 급선무나 그것이 실패하면 산사람이라도 남으로 피난을 시키는 것이 급선무라는 권고를 받는다. 주영진의 친구 장익수는 북괴앞잡이로 종교탄압의 만행을 부리다 기독교정신에 감화되어 기독교인들을 월남시키는데 힘을 기울인다.',120,19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/poster/50.png')
;

INSERT INTO images (movie_id,url) VALUES
(1,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/1/1.jpg'),
(1,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/1/2.jpg'),
(1,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/1/3.jpg'),
(1,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/1/4.jpg'),
(1,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/1/5.jpg'),
(2,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/2/1.jpg'),
(2,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/2/2.jpg'),
(2,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/2/3.jpg'),
(2,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/2/4.jpg'),
(2,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/2/5.jpg'),
(3,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/3/1.jpg'),
(3,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/3/2.jpg'),
(3,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/3/3.jpg'),
(3,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/3/4.jpg'),
(4,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/4/1.jpg'),
(4,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/4/2.jpg'),
(4,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/4/3.jpg'),
(4,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/4/4.jpg'),
(4,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/4/5.jpg'),
(5,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/5/1.jpg'),
(5,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/5/2.jpg'),
(5,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/5/3.jpg'),
(5,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/5/4.jpg'),
(5,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/5/5.jpg'),
(6,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/6/1.jpg'),
(6,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/6/2.jpg'),
(6,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/6/3.jpg'),
(6,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/6/4.jpg'),
(6,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/6/5.jpg'),
(7,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/7/1.jpg'),
(7,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/7/2.jpg'),
(7,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/7/3.jpg'),
(7,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/7/4.jpg'),
(7,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/7/5.jpg'),
(7,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/7/6.jpg'),
(8,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/8/1.jpg'),
(8,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/8/2.jpg'),
(8,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/8/3.jpg'),
(8,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/8/4.jpg'),
(8,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/8/5.jpg'),
(9,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/9/1.jpg'),
(9,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/9/2.jpg'),
(9,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/9/3.jpg'),
(9,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/9/4.jpg'),
(10,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/10/1.jpg'),
(10,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/10/2.jpg'),
(10,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/10/3.jpg'),
(10,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/10/4.jpg'),
(10,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/10/5.jpg'),
(11,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/11/1.jpg'),
(11,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/11/2.jpg'),
(11,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/11/3.jpg'),
(11,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/11/4.jpg'),
(11,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/11/5.jpg'),
(12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/12/1.jpg'),
(12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/12/2.jpg'),
(12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/12/3.jpg'),
(12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/12/4.jpg'),
(12,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/12/5.jpg'),
(13,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/13/1.jpg'),
(13,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/13/2.jpg'),
(13,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/13/3.jpg'),
(13,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/13/4.jpg'),
(13,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/13/5.jpg'),
(14,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/14/1.jpg'),
(14,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/14/2.jpg'),
(14,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/14/3.jpg'),
(14,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/14/4.jpg'),
(14,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/14/5.jpg'),
(15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/15/1.jpg'),
(15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/15/2.jpg'),
(15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/15/3.jpg'),
(15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/15/4.jpg'),
(15,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/15/5.jpg'),
(16,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/16/1.jpg'),
(16,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/16/2.jpg'),
(16,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/16/3.jpg'),
(16,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/16/4.jpg'),
(16,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/16/5.jpg'),
(17,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/17/1.jpg'),
(17,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/17/2.jpg'),
(17,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/17/3.jpg'),
(17,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/17/4.jpg'),
(17,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/17/5.jpg'),
(18,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/18/1.jpg'),
(18,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/18/2.jpg'),
(18,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/18/3.jpg'),
(18,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/18/4.jpg'),
(18,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/18/5.jpg'),
(19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/19/1.jpg'),
(19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/19/2.jpg'),
(19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/19/3.jpg'),
(19,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/19/4.jpg'),
(20,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/20/1.jpg'),
(20,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/20/2.jpg'),
(20,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/20/3.jpg'),
(20,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/20/4.jpg'),
(21,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/21/1.jpg'),
(21,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/21/2.jpg'),
(21,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/21/3.jpg'),
(21,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/21/4.jpg'),
(21,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/21/5.jpg'),
(22,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/22/1.jpg'),
(22,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/22/2.jpg'),
(22,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/22/3.jpg'),
(22,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/22/4.jpg'),
(23,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/23/1.jpg'),
(23,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/23/2.jpg'),
(23,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/23/3.jpg'),
(23,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/23/4.jpg'),
(24,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/24/1.jpg'),
(24,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/24/2.jpg'),
(24,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/24/3.jpg'),
(24,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/24/4.jpg'),
(25,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/25/1.jpg'),
(25,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/25/2.jpg'),
(25,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/25/3.jpg'),
(25,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/25/4.jpg'),
(25,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/25/5.jpg'),
(26,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/26/1.jpg'),
(26,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/26/2.jpg'),
(26,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/26/3.jpg'),
(26,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/26/4.jpg'),
(26,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/26/5.jpg'),
(27,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/27/1.jpg'),
(27,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/27/2.jpg'),
(27,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/27/3.jpg'),
(27,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/27/4.jpg'),
(27,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/27/5.jpg'),
(28,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/28/1.jpg'),
(28,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/28/2.jpg'),
(28,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/28/3.jpg'),
(28,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/28/4.jpg'),
(29,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/29/1.jpg'),
(29,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/29/2.jpg'),
(29,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/29/3.jpg'),
(29,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/29/4.jpg'),
(29,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/29/5.jpg'),
(30,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/30/1.jpg'),
(30,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/30/2.jpg'),
(30,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/30/3.jpg'),
(30,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/30/4.jpg'),
(30,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/30/5.jpg'),
(31,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/31/1.jpg'),
(31,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/31/2.jpg'),
(31,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/31/3.jpg'),
(31,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/31/4.jpg'),
(31,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/31/5.jpg'),
(32,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/32/1.jpg'),
(32,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/32/2.jpg'),
(32,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/32/3.jpg'),
(32,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/32/4.jpg'),
(32,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/32/5.jpg'),
(32,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/32/6.jpg'),
(33,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/33/1.jpg'),
(33,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/33/2.jpg'),
(33,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/33/3.jpg'),
(33,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/33/4.jpg'),
(33,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/33/5.jpg'),
(34,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/34/1.jpg'),
(34,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/34/2.jpg'),
(34,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/34/3.jpg'),
(34,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/34/4.jpg'),
(35,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/35/1.jpg'),
(35,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/35/2.jpg'),
(35,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/35/3.jpg'),
(35,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/35/4.jpg'),
(35,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/35/5.jpg'),
(36,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/36/1.jpg'),
(36,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/36/2.jpg'),
(36,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/36/3.jpg'),
(36,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/36/4.jpg'),
(36,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/36/5.jpg'),
(37,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/37/1.jpg'),
(37,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/37/2.jpg'),
(37,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/37/3.jpg'),
(37,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/37/4.jpg'),
(37,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/37/5.jpg'),
(38,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/38/1.jpg'),
(38,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/38/2.jpg'),
(38,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/38/3.jpg'),
(38,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/38/4.jpg'),
(38,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/38/5.jpg'),
(39,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/39/1.jpg'),
(39,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/39/2.jpg'),
(39,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/39/3.jpg'),
(39,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/39/4.jpg'),
(39,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/39/5.jpg'),
(40,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/40/1.jpg'),
(40,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/40/2.jpg'),
(40,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/40/3.jpg'),
(40,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/40/4.jpg'),
(40,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/40/5.jpg'),
(41,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/41/1.jpg'),
(41,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/41/2.jpg'),
(41,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/41/3.jpg'),
(41,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/41/4.jpg'),
(41,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/41/5.jpg'),
(42,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/42/1.jpg'),
(42,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/42/2.jpg'),
(42,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/42/3.jpg'),
(42,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/42/4.jpg'),
(42,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/42/5.jpg'),
(43,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/43/1.jpg'),
(43,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/43/2.jpg'),
(43,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/43/3.jpg'),
(43,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/43/4.jpg'),
(43,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/43/5.jpg'),
(44,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/44/1.jpg'),
(44,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/44/2.jpg'),
(44,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/44/3.jpg'),
(44,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/44/4.jpg'),
(45,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/45/1.jpg'),
(45,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/45/2.jpg'),
(45,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/45/3.jpg'),
(45,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/45/4.jpg'),
(46,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/46/1.jpg'),
(46,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/46/2.jpg'),
(46,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/46/3.jpg'),
(46,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/46/4.jpg'),
(46,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/46/5.jpg'),
(47,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/47/1.jpg'),
(47,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/47/2.jpg'),
(47,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/47/3.jpg'),
(47,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/47/4.jpg'),
(48,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/48/1.jpg'),
(48,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/48/2.jpg'),
(48,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/48/3.jpg'),
(48,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/48/4.jpg'),
(49,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/49/1.jpg'),
(49,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/49/2.jpg'),
(49,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/49/3.jpg'),
(49,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/49/4.jpg'),
(50,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/50/1.jpg'),
(50,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/50/2.jpg'),
(50,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/50/3.jpg'),
(50,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/50/4.jpg'),
(50,'raw.githubusercontent.com/nsoarim/wetchaimage/main/image/50/5.jpg')
;


INSERT INTO categories (category_name) VALUES ("박스오피스 순위"),("위챠 Top 10 영화"),("김영서 평론가님이 최근에 재미있게 본");

INSERT INTO movies_categories (category_id,movie_id,sequence) VALUES
(1,15,1),
(1,19,2),
(1,35,3),
(1,2,4),
(1,11,5),
(1,41,6),
(1,26,7),
(1,23,8),
(1,44,9),
(1,24,10),
(1,47,11),
(1,30,12),
(1,21,13),
(1,29,14),
(1,28,15),
(2,22,1),
(2,50,2),
(2,13,3),
(2,43,4),
(2,48,5),
(2,49,6),
(2,36,7),
(2,1,8),
(2,14,9),
(2,37,10),
(3,27,1),
(3,20,2),
(3,3,3),
(3,38,4),
(3,12,5),
(3,25,6),
(3,40,7),
(3,42,8),
(3,17,9),
(3,45,10),
(3,31,11),
(3,35,12),
(3,33,13),
(3,5,14),
(3,6,15)
;
