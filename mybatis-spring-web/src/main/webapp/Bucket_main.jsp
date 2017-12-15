<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
	var		infoArr	= [[" "], ["I0706", "한겨울눈속에서 <br> 캠핑하기", "눈이 내린 한겨울의 캠핑은 숙련된 캠퍼들에겐 하나의 도전 과제와도 같다. 바닥으로부터의 한기가 충분히 차단되는 등급의 매트와 혹한용 침낭이 있다면 일단 얼어죽을 염려는 하지 않아도 된다. 하지만 영하에서 원활하게 작동되는 버너와 텐트 자체를 따뜻하게 해주는 여러 난방도구까지... 미니멀하게 갈 것인지 최첨단 장비들을 모두 동원할 것인지 선택의 기로가 남아있다.", "2", "네이버 캐스트: 인천왕산가족오토캠핑장", "http://navercast.naver.com/contents.nhn?rid=111&contents_id=4539", "네이버 매거진캐스트: 눈을 찾아 떠난 겨울캠핑", "http://navercast.naver.com/magazine_contents.nhn?rid=1107&contents_id=18549"], ["I0797", "남극의 빙하 사이로 <br> 크루징하기", "린드블라드 익스페디션은 세계의 오지와 극지를 찾아다니는 여행 서비스로 고급화된 시설과 서비스로 많은 사진가와 탐험가의 사랑을 받고 있다. 내셔널 지오그래픽의 포토그래퍼들이 크루즈에 동행하기 때문에 다큐멘터리 사진의 노하우를 배울 수 있다는 것도 최고의 장점 중 하나. 짧게는 14일에서 24일까지의 코스가 있으며 남극대륙까지 접근하는 노선의 경우 11월에서 2월까지 한 달에 한 번씩 있다. 미국 출발을 기준으로 2500만원에서 5000만원의 비용이 든다.", "1", "린드블라드 익스페디션", "https://www.expeditions.com/special-offers/"], ["I0585", "핀란드에서 <br> 사우나즐기기", "한국의 집집마다 김치냉장고가 있듯, 핀란드 사람들은 집안에 설치한 작은 사우나에서 매일 사우나를 즐긴다. 겨울이 되면 얼어붙은 호숫가 근처에 간이 사우나를 만들고 사우나를 즐기다가 얼음물 속으로 뛰어들곤 하기도 한다. 하지만 여행객들이 핀란드인의 사우나 문화를 체험하기란 쉽지 않은 것이 사실. 핀란드 사우나 데이는 여행자들이 체험할 수 있는 곳곳의 사우나 시설을 소개하고 사우나에 대한 다양한 팁을 제공한다.", "1", "헬싱키 사우나 데이", "http://www.helsinkisaunaday.fi/"], ["I0053", "호주에서 한여름의 <br> 크리스마스보내기", "한여름에 만나는 크리스마스는 어떤 모습일까? 두꺼운 외투가 아닌 시원한 반팔 셔츠를 입은 산타 할아버지부터 선물 배달을 마치고 해먹에서 늘어지게 쉬는 산타 할아버지까지… 12월, 호주에 방문하면 더위를 즐기는 산타 할아버지를 만날 수 있다.", "1", "호주 관광청", "www.australia.com/ko-kr"], ["I0784", "드넓은 설원에서 <br> 스노카이팅하기", "미국과 유럽에서는 이미 많은 마니아층을 보유하고 있는 스노카이팅은 스노보드와 패러글라이딩이 접목된 스포츠. 너른 벌판에서 바람을 이용해 보드를 탄 채로 하늘을 나는 방식으로 각종 기술과 힘을 이용하면 아파트 20층 높이까지 올라가는 짜릿함을 맛볼 수 있다. 균형을 잡을 필요가 없어 초보자도 쉽게 할 수 있지만 속도가 빠르고 높게 날기 때문에 안전장비는 필수다. 우리나라에서는 대관령 양떼 목장 근처나 덕유산이나 한라산이 스노카이팅 명소.", "1", "포항카이트보딩협회", " http://cafe.daum.net/pkite"], ["I0048", "삿포로에서 털게 <br> 배터지게먹기", "홋카이도의 추운 날씨로 털옷을 입은 털게! 한국에서는 구경하기도 힘든 귀한 몸이라 삿포로에 갔다면 반드시 먹어봐야 할 해산물이다. 가격이 만만치 않으니 뷔페를 이용해 포식해보자. 삿포로 시내에 전문점들이 자리잡고 있다.", "1", "웰컴 투 삿포로", "http://www.welcome.city.sapporo.jp/?lang=ko"], ["I0070", "얼어붙은 바이칼 호수 위로 <br> 트레킹하기", "호수 위로 걸어보는 상상을 해 본 적이 있는가? 트레킹뿐만 아니라 드라이브까지 가능한 곳이 있으니 바로, 바이칼 호수다. 최대 1미터까지 얼어붙는 투명한 얼음 밑으로 물 속이 보이고, 눈꽃들이 피어나 신비로운 바이칼 호수. 얼어붙은 바이칼 호수 위 트레킹이 세계에서 가장 아찔하지 않을까?", "1", "네이버 지식백과: 죽기 전에 꼭 봐야 할 자연 절경 1001", "http://terms.naver.com/entry.nhn?docId=949362&cid=42867&categoryId=42867"], ["I0089", "러이끄라통 축제에서 <br> 소원과함께색등날리기", "태국 러이끄라통 축제는 전 세계적으로도 유명한 연등 축제. 바나나 잎으로 만든 연꽃 모양의 작은 배(끄라통)에 불을 밝힌 초와 향을 올려 강물에 띄우며 소원을 빈다. 촛불이 꺼지지 않고 멀리 가면 소원이 이루어지는데, 수많은 끄라통들이 강물을 떠내려가는 모습이 밤하늘의 별처럼 반짝인다.", "1", "태국 관광청", "http://www.visitthailand.or.kr"], ["I0173", "뉴욕 록펠러센터 앞에서 <br> 크리스마스보내기", "이번 크리스마스는 뉴욕 록펠러 센터 앞에서 보내보는건 어떨까? 마천루 사이의 대형 트리와 건너편 삭스백화점의 라이트쇼를 바라보며 스케이팅을 즐겨보자. &lt;나 홀로 집에 2&gt;의 케빈처럼 뉴욕의 거리를 돌아다니자.", "1", "뉴욕관광청", "http://www.nycgo.com/"], ["I0813", "영어 완전 정복해서<br> 프리 토킹하기", "외국인과 막힘없이 영어로 술술 대화를 이어가는 사람들이 부러웠다면 오늘부터 당장 영어의 바닷속에 스스로를 풍덩 담그자. 서점에 가서 영어 회화 독학 서적을 보고 꾸준히 해도 좋고 전문 학원에 수강을 하는 것도 좋다. 시간이 부족하다면 성인 학습지를 통해 실력을 키우는 것도 방법이다. 미드를 틀어 놓고 귀를 트이게 하고 따라 하면서 영어에 대한 부담감을 낮추는 것도 영어 회화의 달인들이 말하는 노하우. 6개월 이상 꾸준히 하다 보면 영어 회화에 대한 자신감이 부쩍 늘어난 것을 확인할 수 있다.", "2", "스피킹맥스", "http://www.speakingmax.com/", "시원스쿨", "http://www.siwonschool.com/"], ["I0228", "카가와현에서 <br> 사누키우동 투어하기", "날이 쌀쌀해지고 있다. 겨울의 대표적인 음식 우동 순례를 떠나보자. 순례지는 카가와현의 사누키. 사누키 우동은 국물보다 굵고 쫄깃한 면발이 일품이다. 목구멍을 부드럽게 넘어가는 사누키 우동 너란 아이... 짱맛! 우동 가게 찾기 귀찮다면 여러 우동 집에 데려다 주는 우동버스투어도 있으니 이용해 보자. 우동 값은 포함 되지 않으니 참고.", "3", "일본정부관광국", "http://www.welcometojapan.or.kr/index.html", "가가와현 관광 사이트", "http://www.my-kagawa.jp/udon", "우동버스투어홈페이지", "http://www.kotosan.co.jp/sp/"], ["I0427", "프리저브드 플라워<br> 자격증 도전하기", "꽃을 싫어하는 사람도 있을까? 향긋하고 화사하지만 금세 시들어버리는 생화에 선뜻 마음을 정할 수 없었다면 프리저브드 플라워를 배워보는 건 어떨까? 생화를 특수 가공하여 시들지 않는 꽃으로 만드는 기법인 프리저브드 플라워는 최근 들어 '돈 되는 취미'로도 홍보되며 자격증을 취득하려는 수요도 늘고 있다. 특별한 날, 지인들에게 아름다움이 변치 않는 프리저브드 플라워는 정말 뜻깊은 선물이 될 것이다.", "0"], ["I0407", "프라하의 크리스마스 마켓 <br> 구경하기", "프라하의 구시가 광장에서는 매년 12월 크리스마스 마켓이 열린다. 중세의 옛모습을 잘 간직하고 있는 이 곳을 전통 상점들과 관광객들이 가득 메운다. 축제의 명색에 걸맞게 다양한 즐길거리, 볼거리가 준비돼 있다. 크리스마스 마켓은 12월 24일이면 철수하는 것이 보통이지만, 프라하의 크리스마스 마켓은 드물게 1월 초까지 이어진다. 따뜻한 와인을 한 잔씩 마시며 프라하의 골목을 누비다 보면 유럽의 추운 겨울 날씨가 무색해질 것이다.", "1", "프라하 크리스마스 마켓", "https://www.pragueexperience.com/events/christmas-markets.asp"], ["I0298", "독일 뉘른베르크 <br> 크리스마스 마켓 즐기기", "오래도록 기억에 남을 크리스마스를 만들고 싶다면 독일 뉘른베르크로 향하자. 독일에서 가장 오래된 크리스마스 마켓이 열리는 곳으로 크리스마스 관련 행사가 끊임없이 열린다. 계피향이 나는 과자인 렙쿠헨과 군밤, 팥만두는 크리스마켓을 대표하는 간식으로 거리를 누비며 맛보기에 제격이다.", "1", "독일 관광청", "http://www.germany.travel/"], ["I0782", "얼음낚시 손맛으로 <br> 추운겨울잊기", "기존 낚시와는 또 다른 분위기에서 손맛을 느끼고 싶다면 올 겨울 얼음낚시를 떠나보자. 얼음을 깨는 것부터 이색적인 경험을 선사하는데 얼음을 깨는 도구는 낚시장에서 대여해주고 조작법도 간단하다. 얼음낚시 초반기인 12월 중순부터 말경에는 수심 1~2m 내외 구간이, 1월 중순까지는 수심 2~4m 구간이 물고기가 잘 잡히는 포인트이니 참고하자. 낚시가 처음이라면 지자체에서 열리는 각종 낚시 축제를 통해 입문하는 것도 좋은 방법이다.", "1", "화도낚시공원", "http://www.ecoman.co.kr/"], ["I0461", "내일로 7일권 끊고<br> 일주일간 열차여행하기", "젊음의 특권, '내일로'는 만 25세 미만만 이용할 수 있는 코레일의 패스로 소지자는 KTX와 관광열차를 제외한 일반열차들을 자유석과 입석에서 무제한으로 탑승할 수 있다. 7일권에 7만원이 안되니 1일당 만원이 되지 않는 파격적인 가격. 내일로와 함께 안동과 전주, 경주, 군산, 강릉 등 지방의 매력적인 중소도시를 여행해보자. 나이 먹어서 슬픈 26세 이상을 위한 '하나로 패스'도 있으니 세상이 당신을 외면한다 생각치 말자.", "1", "내일로", "http://www.rail-ro.com/"], ["I0779", "인터스텔라 촬영지, <br> 스카프타펠 빙하 하이킹 하기", "스카프타벨 빙하는 영화 &lt;인터스텔라&gt;에서 멧 데이먼이 있던 행성으로 나온 곳으로 거뭇거뭇한 빙하로 유명하다. 빙하가 검게 금이 간 것처럼 보이는데 이는 화산이 분출하면서 생긴 화산재가 그 틈에 쌓인 데서 비롯된 것. 바트나요쿨 빙하에서 뻗어 나온 크고 작은 빙하들이 많아서 빙하를 밟고 빙하에서 녹은 물을 만지는 등 빙하를 오감으로 느낄 수 있는데, 매년 12월에서 3월까지 운영하는 빙하 하이킹 투어를 이용하는 것도 좋다. 1일 약 70달러 정도다.", "2", "스카프타펠 빙하 투어", "http://www.mountainguides.is", "아이슬란드 관광청", "http://www.visiticeland.com"], ["I0144", "스위스 베르비에에서 <br> 스키 타기", "스키장의 끝판왕은 스위스 베르비에를 두고 하는 말이다. 두 눈은 마테호른과 그랑 꽁방, 몽블랑을, 플레이트로는 두 눈을 기분 좋게 가르며 스키를 즐길 수 있기 때문. 스키로 출출해졌다면 슬로프 옆, 칼스버그 레스토랑에서 간단한 식사를 즐기는 것도 이색적인 경험이 될 것이다.", "1", "스위스 관광청", "http://www.myswitzerland.com/ko/home.html"], ["I0159", "헝가리 세체니 온천에서 <br> 휴식하기", "헝가리 세체니 온천은 유럽 최대 규모의 스파로 유명하다. 겨울에도 지하 971m에서 퍼내는 74도의 뜨거운 온천수를 즐길 수 있어 인기가 많다. 수영은 물론 물에 몸을 담그고 체스까지 둘 수 있어 목욕 외에도 할 게 많은 곳. 네오 바로크 양식의 고풍스러운 건물에서 고급진 온천을 즐겨보자.", "1", "세체니 온천 홈페이지", "http://www.szechenyibath.hu/"], ["I0716", "스쿠버 다이빙<br> 자격증 따기", "지구 상에서 육지보다 훨씬 더 큰 부분을 차지하는 바닷속 세상을 만날 수 있어 매력적인 스쿠버 다이빙. 수영을 못해도 상관없다. 마스크와 오리발을 착용하고 물에 대한 적응력을 기르다 보면 스쿠버 다이빙을 하는 데 필요한 수준의 수영 실력을 갖추게 된다. 입문자는 오픈 워터 다이버 자격증 코스를 듣게 되고 실내 수영장, 개방 수역 다이빙 교육을 포함하여 열흘 정도 걸린다. 오픈워터다이버 이후에는 어드밴스드 오픈워터 다이버, 레스큐 다이버, 다이브 마스터 등에 도전해보자.", "1", "스쿠버블 다이브센터", "http://www.scubable.com/"], ["I0465", "내가 만든 색의 페인트로<br> 칙칙한 내 방 분위기 바꾸기", "친환경 페인트로 유명한 던 에드워드는 무독성 소재에 다양한 색상으로 DIY 매니아들의 사랑을 받아왔다. 벽지위에 그냥 바르는 것으로도 집안 분위기를 근사하게 바꿀 수 있다. 페인트 2통에 페인트붓, 롤러, 마스킹 테이프를 사면 7만원 정도로도 근사한 DIY 인테리어 리뉴얼이 가능하다. 원하는 색이 있는 경우 페인트 조각이나 샘플 색상을 들고 가면 그 자리에서 조색이 가능하다.", "2", "네이버 블로그: 제이쓴의 자취방 셀프 인테리어", "http://blog.naver.com/yeonjason/220142337225", "던에드워드 페인트", "http://jeswood.com/"], ["I0462", "레터링<br> 타투하기", "액세서리에 싫증이 났다면 레터링 타투에 도전해 보자. 목 뒤, 손목, 팔 등 원하는 부위에 짧은 문구를 넣어 자연스러우면서도 멋스러운 느낌을 낼 수 있다. 레터링 타투의 가격은 문구의 크기, 길이 등에 따라 천차만별이지만 짧은 문구의 경우 5~10만원 이내에도 가능하다. 요즘에는 걸그룹 멤버들도 레터링 타투를 해 본인의 매력과 개성을 드러내고 있다. 일단 내 삶의 좌우명 등 오래 오래 간직하고픈 문구부터 생각해 보자.", "1", "네이버 블로그: 코리아위크", "http://blog.naver.com/houryoul1/220556759795"], ["I0628", "홍콩 스카이라인에서<br> 작열하는 불꽃 감상하기", "홍콩의 스카이라인 야경은 세계에서 둘째가라면 서러울 정도로 눈이 부신다. 여기 불꽃까지 작열하면 안 보고는 못 베기는 백만 불짜리 야경이 따로 없다. 12월 31일에서 새해로 넘어갈 때 불꽃을 터뜨리는데 특히 전망 좋은 명당은 센트럴 페리선착장, 침사이추이 수변 지역, 영화의 거리 그리고 빅토리아 피크다. 스카이라인 전경을 제대로 보고 싶은 이들은 빅토리아 피크에 오르는 것을 추천한다.", "1", "홍콩 관광청", "http://www.discoverhongkong.com/"], ["I0744", "좋아하는 책으로 가득<br> 채운 서재 만들기", "책을 좋아하는 사람이라면 누구나 갖고 싶을 나만의 서재. 치열하고 소란스러운 세상에서 벗어나 조용히 사색에 잠기고 지식과 새로운 삶을 간접적으로 경험할 수 있는 공간이다. 취향을 반영한 소품을 통해 미적 아름다움까지 더하면 오래도록 머물고 싶은 서재를 완성할 수 있다. 공간이 부족하다면 책꽂이를 이용해 공간을 분리하거나 침대 밑에 작은 책꽂이를 두어 침대 밑 서재를 꾸며보는 방법도 있다.", "1", "나만의 서재 만들기", "http://navercast.naver.com/contents.nhn?rid=39&contents_id=15873"], ["I0426", "향긋한 가죽 소품 직접<br> 만들어 가져가기", "사고 싶어도 엄두가 나지 않는 고가의 백이라던지, 돈이 있어도 나에게 딱 맞춤한 디자인이 눈에 띄지 않는다면? 가죽으로 만든 생활 소품을 직접 만들어보는 건 어떨지? 기술이 없는 초보자들도 첫 작품으로 멋진 백이나 아니면 지갑, 필통과 같은 생활 소품을 만들어낼 수 있다. 패턴에 맞춘 수업을 택하게 되면, 추후 혼자서 기술을 응용해 다른 제품을 만들어내는 수준의 기술 보유는 불가능하겠지만, 일생 일대 단 하나 내가 만든 가죽 제품을 소유하는 것도 멋진 일이다.", "0"], ["I0468", "홈브루잉으로 나만의<br> 맥주 만들기", "이태원에서 우연히 마신 IPA 한 잔에 푹 빠져버렸다면 이제는 진한 에일을 직접 만들어 보는 건 어떨까? 서울과 부산을 비롯한 대도시에 브루잉을 직접 해볼 수 있도록 장비가 마련된 공방이 여럿 있다. 뽀글뽀글 숨쉬는 효모들을 정성스럽게 길러 맛있는 맥주를 만들어보자.", "2", "서울 소마공방", "https://www.facebook.com/pages/%EC%86%8C%EB%A7%88%EA%B3%B5%EB%B0%A9/591852130870765", "부산 크래프트 브루어", "http://www.craftbrewer.kr/"], ["I0562", "플라잉 요가<br> 배우기", "해먹 위에서 요가, 필라테스, 발레 등의 동작이 이루어지는 플라잉 요가. 해먹에서 중심 잡는 것부터 몸에 구석구석 자리잡은 근육들이 총동원되기 때문에 몸매를 탄력적으로 가꾸는데 효과적이다. 평소에 하기 힘든 물구나무서기처럼 거꾸로 매달리는 동작도 쉽게 할 수 있는 것도 장점. 반중력이 작용해 디스크에 가해지는 압력이 줄어들어 허리 통증을 개선한다는 것이 플라잉 요가 창시자의 전언이다.", "1", "(주)앤티그래비티 코리아(플라잉 요가 국내 1호점)", "http://www.flyingyogakorea.co.kr/"]];
	var		infoUrl	= [["", ""], ["I0706", "https://goo.gl/p6X6rh"], ["I0797", "https://goo.gl/sanOfg"], ["I0585", "https://goo.gl/vGvMe9"], ["I0053", "https://goo.gl/1PwJ9u"], ["I0784", "https://goo.gl/hAvjz0"], ["I0048", "https://goo.gl/1lzfq9"], ["I0070", "https://goo.gl/f0qrS3"], ["I0089", "https://goo.gl/DPokln"], ["I0173", "https://goo.gl/1WriUa"], ["I0813", "https://goo.gl/0o7Jq0"], ["I0228", "https://goo.gl/2df4w4"], ["I0427", "https://goo.gl/zquJSc"], ["I0407", "https://goo.gl/UuYHGa"], ["I0298", "https://goo.gl/52vwvg"], ["I0782", "https://goo.gl/U6ZsxK"], ["I0461", "https://goo.gl/B7zEtd"], ["I0779", "https://goo.gl/0XvMHy"], ["I0144", "https://goo.gl/yOKyhJ"], ["I0159", "https://goo.gl/r4w0dd"], ["I0716", "https://goo.gl/IJ65xo"], ["I0465", "https://goo.gl/gnLnHo"], ["I0462", "https://goo.gl/5Qtpe4"], ["I0628", "https://goo.gl/hy8BLH"], ["I0744", "https://goo.gl/wuf1nV"], ["I0426", "https://goo.gl/bbixDZ"], ["I0468", "https://goo.gl/X4Ilhd"], ["I0562", "https://goo.gl/Wsqotq"]];
</script>
		

    <meta property="fb:app_id" content="803062869828098" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Grab Bucket List" /><!-- 2017-03-13 -->
    <meta property="og:url" content="http://www.lifeplusbucket.com/discover/featured.do" />
    <meta property="og:description" content="라이프플러스 버킷리스트, 당신의 삶에 최고의 경험을 더해보세요." />
    <meta property="og:image" content="http://www.lifeplusbucket.com/_resource/images/common/sns_share_1200.jpg"  />
    <meta name="title" content="Grab Bucket List"><!-- 2017-03-13 -->
    <meta name="description" content="Grab 버킷리스트, 당신의 삶에 최고의 경험을 더해보세요.">
    <meta name="image" content="http://www.lifeplusbucket.com/_resource/images/common/sns_share_1200.jpg">
    <link rel="shortcut icon" type="image/x-icon" href="_resource/_web/images/favicon.ico.png">
 
    <link href="_resource/css/common.css" rel="stylesheet" />
    <script>
	function load_google() {
	    gapi.client.setApiKey('AIzaSyBySGWNccSTO9XHnlay_kpBHAWUO1-d3L4');
	    gapi.client.load('urlshortener', 'v1',function(){});
	}
   </script>
   <script src="https://apis.google.com/js/client.js?onload=load_google"></script>



<link href="_resource/css/discover.css" rel="stylesheet" />
<link href="_resource/css/discover.popular.css" rel="stylesheet" />
<link href="_resource/css/discover.featured.css" rel="stylesheet" />
<link href="_resource/css/discover.library.css" rel="stylesheet" />
<title>Grab Bucket List : 버킷 리스트를 발견하고 삶에 색을 더하다.</title>

<script>
isLogin = true;
</script>






</head>
<body>
<div role="status" class="skip-content">
    <p><a href="javascript:void(0);" class="skip-contents">본문 바로가기</a></p>
</div>


<script>
	var isLogin = true;
    var resourcePath = "_resource";
    var webDomain = "http://localhost:8088/Grap_UI"; 
    var domainName = "lifeplusbucket.com"; 
    var fbAppId = "803062869828098";
    var nvAppId = "MLj0oi23BbB6Z9PdGctD";
    var kaAppId = "54fdc94fb5308e67bf208e2863485e71";
    var kaAppSecret = "cd1307a27870955ff42db477f3945923";
    var kaAppSecret = "U_2RigbPTb";
    var sslDomain = "https://www.lifeplusbucket.com";
    document.domain="localhost:8088/Grap_UI";

</script>
<script> var isMainAlready = true; </script>

<div id="wrap" class='already'>

    <div id="guide-height-bg"></div>
    <div id="white-dimmed"></div>
    <div id="container" class="fixed-group">
        <div class="gnb_bg"></div>
        



<div class="pop_layer pop_login">
    <div class="pop_inner">
        <a href="javascript:login.closePop();" class="btn_pop_close">
            <img src="_resource/images/register/pop/btn_pop_close.png" alt="닫기">
        </a>
       
      <div class="text_box">
            <p>
               아직 Grab 회원이 아니신가요?
            </p>
            <span>회원 가입하시고 당신의 삶에 버킷 리스트를 더해 보세요.</span> <a href="/member/email_register.do" class="btn_register mot2" onclick='eventTrack("", "login_btn_register"); NTrackObj.callTrackTag("29443", callbackFn, 11979);'>회원가입</a>
        </div>
   
    </div>
</div>
<div class="pop_bg"></div>
 

<script>
function loginInputCheck(){
	if( $("#_login_email_").val() == ""){
		alert("이메일을 입력하세요.");
		return;
	}
	if( $("#_login_passwd_").val() == ""){
		alert("비밀번호를 입력하세요.");
		return;
	}
	
		$.ajax( // 화면의 데이타를 조회한다.
				{
					 
					url:"https://www.lifeplusbucket.com/member/login.do",
					dataType:"jsonp",
					jsonp:"callback",
					type:"POST",
					async:true,
					data:{
						_login_email_:$("#_login_email_").val(),
						_login_passwd_:$("#_login_passwd_").val()
					},
					success:function( data ) {
						if(data.code == "0"){
                            NTrackObj.callTrackTag('29441', callbackFn, 11979);
							$("#__loginForm__").submit();
						}else{
							alert("이메일 주소 또는 비밀번호가 정확하지 않습니다.");
						}
 						
	 				},
					error : function( e ) {
						//alert("조회 오류\n"+e.error);
					}
				}
			);	
	
	
	//$("#__loginForm__").submit();
}
function checkLoginPassswordKeyPress(event){
	   if(window.event){
	      var code = window.event.keyCode;
	   }
	   else{
	      var code = e.charCode;
	   }
		   
 
		 
	if(code == 13){
		loginInputCheck()
	}
}


</script>



        <div class="dumpBannerBox"></div>
        <div id="facebook-banner" class="fixed-group">
            <a href="https://www.lifeplus.co.kr/lifeplusxlcd/" class="banner-copy" target="_blank" onclick='eventTrack("", "clublibday_banner_head");'><!-- 20171109 -->
                    
            </a>
            <a href="#" class="close-btn"><img src="_resource/images/common/banner-close-btn.png"></a>
        </div>
        <div id="header" class="fixed-group">
            <div class="dumpBannerBox"></div>
            <div class="h-members-container">
                <div class="h-members">
                    <div class="h-members-btns">
                    	<!-- 2017-03-13 -->
                        <div class="h-members-sns-btns">
                            <a href="https://www.facebook.com/lifeplus.h/" class="fb" target="_blank" onclick='eventTrack("", "gnb_facebook");' >페이스북</a>
                            <a href="https://www.instagram.com/lifeplus_h/" class="insta" target="_blank" onclick='eventTrack("", "gnb_instagram");'>인스타그램</a>
							<a href="#" class="lifeplus" target="_blank" onclick='eventTrack("", "gnb_lifeplus");'><img src="_resource/_web/images/favicon.ico.png" alt="Grab" /></a>
                        </div>
                        <!-- //2017-03-13 -->
                       <div class="h-members-login-btns">
                            
                         <!--    <a href="javascript:login.showPop('pop_login');" class="login" onclick="eventTrack(&quot;&quot;, &quot;gnb_login&quot;);">로그인</a>
                            <a href="/member/register.do" class="regist" onclick="eventTrack(&quot;&quot;, &quot;gnb_register&quot;);">회원가입</a>
 							-->                            
                            <a href="/member/logout.do" class="login">로그아웃</a>
                            <a href="/ln/member/member_info.do" class="regist">회원정보관리</a>
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="h-menu-box">
                <a href="Bucket_main" class="h-logo">
                    <span>
                        <img src="_resource/_web/images/common/Blogo.png" alt="?"/>
                 
                    </span>
                </a>
                <a href="javascript:void(0);" class="h-menu">
                    <div class="bar1 mot2"></div>
                    <div class="bar2 mot2"></div>
                    <div class="bar3 mot2"></div>
                </a>
                <div class="gnb_menu">
                    <ul class="gnb_menu_ul">
                        <li>
                            <a href="Bucket_main" class="gnb1 mot2" onclick='eventTrack("", "menu_discover");'>
                                <div class="text mot2">
                                    <span class="en mot2">Discover</span><br>
                                    당신의 버킷 리스트를 찾아보세요.
                                </div>
                                <div class="ico mot2"></div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:goMyBucket();" class="gnb2 mot2" onclick='eventTrack("", "menu_mypage");'>
                                <div class="text mot2">
                                    <span class="en mot2">My Bucket</span><br>
                                    나의 버킷 리스트를 모아보세요.
                                </div>
                                <div class="ico mot2"></div>
                            </a>
                        </li>
                     
                        <li>
                            <a href="Main_bucket" class="gnb4 mot2" onclick='eventTrack("", "menu_about");'>
                                <div class="text mot2">
                                    <span class="en mot2">About</span><br>
                                    <strong>Lifeplus</strong> Bucket List를 소개합니다. <!-- 2017-03-13 -->
                                </div>
                                <div class="ico mot2"></div>
                            </a>
                        </li>
                    </ul>
                    <div class="gnb_info">
                    	<!-- 2017-03-13 -->
                        <ul class="info_ul">
                            <li>
                                <a href="Main" class="btn_lifeplus en" target="_blank" onclick='eventTrack("", "menu_lifeplus");'>Grab</a>
                            </li>
                            <li>
                                <a href="https://www.facebook.com/lifeplus.h/" class="btn_facebook en" target="_blank" onclick='eventTrack("", "menu_facebook");'>FACEBOOK</a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/lifeplus_h/" class="btn_insta en" target="_blank" onclick='eventTrack("", "menu_instagram");'>INSTAGRAM</a>
                            </li>
                        </ul>
                    	<!-- //2017-03-13 -->
                        <div class="copyright">
                            <ul class="side_ul">
                                <li>
                                    <a href="/terms.jsp" onclick='eventTrack("", "menu_terms");'>이용약관</a>
                                </li>
                                <li>
                                    <a href="/privacy.jsp" onclick='eventTrack("", "menu_privacy");'>개인정보 취급방침</a>
                                </li>
                                <!--<li>-->
                                    <!--<a href="#">이메일 문의</a>-->
                                <!--</li>-->
                                <li>
                                    <a href="/faq/faq_list.do" onclick='eventTrack("", "menu_faq");'>자주 묻는 질문</a>
                                </li>
                            </ul>
                            <div class="copy_img">
                                <img src="_resource/_web/images/common/mini_logo.png" alt="KH taem. All rights reserved.">
                            </div>
                            <ul class="text_ul">
                                <li>
                                    KH 주식회사
                                </li>
                                <li>
                                    대표이사 강범진
                                </li>
                                <li>
                                    사업자등록번호 123-12-12345
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<script>
function goMyBucket(){
	
	if(!isLogin){
		login.showPop('pop_login',"","http://www.lifeplusbucket.com/ln/mypage/bucket.do");
	}else{
		location.href="/ln/mypage/bucket.do";
	}
}
</script>
   <script src="_resource/js/vendor/makePCookie.js"></script>

<!--NSmart Track Tag Script-->
<script type='text/javascript'>
    callbackFn = function() {};
    var _nsmart = _nsmart || [];
    _nsmart.host = _nsmart.host || (('https:' == document.location.protocol) ? 'https://' : 'http://');
    _nsmart.push([11979, 29407]); // 캠페인 번호와 페이지 번호를 배열 객체로 전달
    document.write(unescape("%3Cscript src='" + _nsmart.host + "n00.nsmartad.com/etc?id=10' type='text/javascript'%3E%3C/script%3E"));
</script>
<!--NSmart Track Tag Script End..-->



<div id="h-empty-box"></div>
<div id="md-discover">
    <div class="md-bg">
        <video class="use_gpu" src="_resource/video/discover_main_loop.mp4" width="1920" height="293" loop autoplay></video>
    </div>
    <div class="md-contents">
        <img class="icon" src="_resource/images/discover/pen-icon.png" alt="펜아이콘" />
        <p class="que en">WHAT'S YOUR BUCKETLIST</p>
        <p class="title">당신의 <span>버킷리스트</span>는 무엇인가요?</p>
        <p class="desc">인생 최고의 경험을 당신의 삶에 더해보세요.</p>
        
    </div>
    
</div>
<div id="sub-navi-empty-box"></div>
<div id="sub-navi" class="fixed-group">
    <div class="dumpBannerBox dumpBannerBox-subNavi"></div>
    <div class="sub-navi-container">
        <div class="sub-navi-btns en">
            <a href="library.do" onclick='eventTrack("", "discover_tab_library");'>LIBRARY</a>
            <a href="featured.do" onclick='eventTrack("", "discover_tab_featured");'>FEATURED</a>
            <a href="/discover/popular.do" onclick='eventTrack("", "discover_tab_popular");'>POPULAR</a>
        </div>
        <div class="sub-navi-search">
            <a href="#" class="en" onclick='eventTrack("", "discover_btn_search");'>
                SEARCH
                <div class="search-icon">
                    <img class="icon-search" src="_resource/images/discover/search-icon.png" alt="" />
                    <img class="icon-close" src="_resource/images/discover/search-close.png" alt="" />
                    <div class="top-mask"></div>
                    <div class="bottom-mask"></div>
                </div>
            </a>
        </div>
    </div>
    


<div id="search">
    <div class="search-container">
        <div class="search-input-box">
            <img src="_resource/images/discover/search-icon-big.png" alt="" />
            <input type="text" id="__search_param1__" placeholder="여기에 검색어를 입력하세요." maxlength="50" />
        </div>
        <div class="search-result">
            <div class="search-result-title"></div>
            
            <div id="search-result-library" style="display:none;" >
                <div class="search-result-library-title en">LIBRARY <span id="search-result-library-title-cnt">0</span></div>
                <div class="search-result-library-contents">

                </div>
                <div class="search-more-btn"  style="display:none;" id="search-more-btn-library"> 
                    <a href="javascript:Search.moreData();" >
                        더보기
                        <img src="_resource/images/discover/search-more-icon.png" alt="" />
                    </a>
                </div>
            </div>
            

            
            <div id="search-result-featured" style="display:none;" >
                <div class="search-result-featured-title en">FEATURED <span id="search-result-featured-title-cnt">0</span></div>
                <div class="search-result-featured-contents">

                </div>
                <div class="search-more-btn" style="display:none;" id="search-more-btn-featured">
                    <a href="javascript:Search.moreDataFeatured();">
                        더보기
                        <img src="_resource/images/discover/search-more-icon.png" alt="" />
                    </a>
                </div>
            </div>
            

            <!-- 검색 결과 없을때 -->
            <div class="none_result" style="display:none;">
                <div class="ico">
                    <img src="_resource/images/mypage/ico_bucket_gray.png" alt="">
                </div>
                <div class="text">
                    <div class="sub">검색 결과가 없습니다.</div>
                    <div class="title">다른 검색어로 <span>버킷 리스트</span>를 찾아보세요.</div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<div id="contents">
  <div id="category" >
        <a class="active" onclick='eventTrack("", "category_tab_all");' href="javascript:Library.changeCategory('');">
            <div class="category-bgs category-bgs1">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>All</p>
        </a>
        <a onclick='eventTrack("", "category_tab_travel");' href="javascript:Library.changeCategory('L0301');">
            <div class="category-bgs category-bgs2">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Travel</p>
        </a>
        <a onclick='eventTrack("", "category_tab_sports");' href="javascript:Library.changeCategory('L0302');">
            <div class="category-bgs category-bgs3">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Sport</p>
        </a>
        <a onclick='eventTrack("", "category_tab_food");' href="javascript:Library.changeCategory('L0303');">
            <div class="category-bgs category-bgs4">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Food</p>
        </a>
        <a onclick='eventTrack("", "category_tab_newskill");' href="javascript:Library.changeCategory('L0304');">
            <div class="category-bgs category-bgs5">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>New Skill</p>
        </a>
        <a onclick='eventTrack("", "category_tab_culture");' href="javascript:Library.changeCategory('L0305');">
            <div class="category-bgs category-bgs6">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Culture</p>
        </a>
        <a onclick='eventTrack("", "category_tab_outdoor");' href="javascript:Library.changeCategory('L0306');">
            <div class="category-bgs category-bgs7">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Outdoor</p>
        </a>
        <a onclick='eventTrack("", "category_tab_shopping");' href="javascript:Library.changeCategory('L0307');">
            <div class="category-bgs category-bgs8">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Shopping</p>
        </a>
        <a onclick='eventTrack("", "category_tab_lifestyle");' href="javascript:Library.changeCategory('L0308');">
            <div class="category-bgs category-bgs9">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Lifestyle</p>
        </a>
    </div>
			
	<div id="list-container" class="use_gpu">
		
		<div class="list-box seq-I1596" style="transform-origin: 50% 50% 0px; transform: translate(0px, 0px); opacity: 1;">
            <div class="list-bg" style="transform: matrix(1, 0, 0, 1, 0, 0);">
                <img src="_resource/images/discover/library/list-empty-box.png" alt="">
                <img class="list-img" src="http://images.hwlife.hscdn.com//library/i1596_thumb.jpg" shareimage="http://images.hwlife.hscdn.com//library/i1596_share.jpg" onload="Popular.listImgLoadComplete(this)" style="opacity: 1;">
                <img class="list-shadow" src="_resource/images/discover/bucket_shadow.png" alt="?">
            </div>
            <div class="winner-count en top3">1</div>
            <div class="list-contents">
                <ul class="list-contents-ul">
                    <li class="category-name en travel">TRAVEL</li>
                    <li class="title">빙하특급열차 타고
<br>스위스의 풍경 즐기기</li>
                
                    
                    
                    <li class="add-btn" key-value="I1596">
                            

                            
                            <div class="list-add-checked change-add-check" style="display:none"><img src="_resource/images/discover/library/checked.png" alt=""></div>

                            <a href="#" class="en change-add-btn" key-value="I1596" style="display:inline-block">
                                <div class="plus"><img src="_resource/images/discover/library/list-icon-plus.png" alt=""></div>
                                <span>ADD</span>
                            </a>
                    </li>
                    
                    
                    
                    <li class="share-btns" style="height: 0px;">
                        

                        
                        <div class="dibs-checked change-like-check" style="display:none">
                            <img src="_resource/images/discover/library/list-icon1.png" alt="">
                            <span>찜하기</span>
                        </div>
                        <a href="#" class="dibs change-like-btn" key-value="I1596" style="display:inline-block">
                            <img src="_resource/images/discover/library/list-icon1.png" alt="">
                            <span>찜하기</span>
                        </a>


                        <a href="#" class="share">
                            <img src="_resource/images/discover/library/list-icon2.png" alt="">
                            <span>공유하기</span>
                        </a>
                        <div class="small-share-btns" key-value="I1596">
                            <a href="javascript:;"><img src="_resource/images/discover/library/btn_share_facebook.png" alt="페이스북 공유하기"></a>
                            <a href="#"><img src="_resource/images/discover/library/btn_share_kakao.png" alt="카카오스토리 공유하기"></a>
                            <a href="#"><img src="_resource/images/discover/library/btn_share_twitter.png" alt="트위터 공유하기"></a>
                            <a href="#" class="small-share-close-btn"><img src="_resource/images/discover/library/btn_share_close.png" alt="공유하기 닫기"></a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="list-add-popup">
                <div class="list-add-container">
                    <ul class="list-add-box">
                        <li class="list-add-icon"><img src="_resource/images/discover/library/list-icon3.png" alt=""></li>
                        <li class="list-add-title en">ADD BUCKET LIST</li>
                        <li class="list-add-desc">버킷 리스트가 추가되었습니다.</li>
                    </ul>
                </div>
            </div>
        </div>
		
    </div>

 
<div id="bucket-list" class="fixed-group">
    <ul class="bucket-list-box">
        <li class="bucket-list-title">
            <div class="title en">
                MY<br>
                BUCKET LIST
            </div>
            <a href="/ln/mypage/bucket.do" class="mypage-btn" onclick='eventTrack("", "discover_board_mypage");'>마이페이지 가기<img src="_resource/images/discover/bucket-list-icon2.png" alt="" /></a>
        </li>
        <li class="arrow-btn-l arrow-btns"><a href="#"><img src="_resource/images/discover/bucket-list-arrow-l.png" alt="" /></a></li>
        <li class="lists">
            <ul class="lists-container">
                <!--<li><a href="javascript:alert('알럿')"><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></a></li>-->
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
            </ul>
        </li>
        <li class="arrow-btn-r arrow-btns"><a href="#"><img src="_resource/images/discover/bucket-list-arrow-r.png" alt="" /></a></li>
        <li class="bucket-share">
            <a href="#" onclick='eventTrack("", "discover_board_share");'>
                <div class="copy">
                    친구들과<br>
                    공유하기
                </div>
                <div class="icon"><img src="_resource/images/discover/bucket-list-icon3.png" alt="" /></div>
            </a>
        </li>
    </ul>
    <div class="bucket-list-close-btn"><a href="#"><img src="_resource/images/discover/bucket-list-closebtn.png" alt="[X]" /></a></div>
    <div class="bucket-floating-menu"><a href="#" onclick='eventTrack("", "discover_btn_board");'><div class="over-mot"></div><img src="_resource/images/discover/floating-icon.png" alt="icon!" /></a></div>
</div>
</div>
<div id="black-dimmed"></div>




<!--  none 되어 있는것을 block 하면 보이게 된다.  -->
<div id="popups" class="fixed-group" style="left: 0px;display: none;">

    
    <div id="detail-popup" class="detail-popup popup-group" style="display: block;" >
        <div class="detail-container">
            <div class="img-container">
                <div class="detail-bg"><img src="_resource/images/discover/library/popup/img-bg.png" alt="img-bg.png" /></div>

                <ul id="detail-img-contents">
                    
                    <li><div class="simple_loading"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div></li>
                    <li class="img-box" bucketimage=""></li>
                    <li class="detail-img-shadow"></li>
                    <li class="detail-img-top-shadow"><img src="_resource/images/discover/popup-top-shadow.png" alt="" /></li>
                    <li class="detail-arrow-btns">		
                        <a href="javascript:;"><img src="_resource/images/discover/etc/arrow-btn-l.png" alt=""></a>
                        <a href="javascript:;"><img src="_resource/images/discover/etc/arrow-btn-r.png" alt=""></a>
                    </li>
                    <li class="detail-title">
                        <p class="category en" id="popup_detail_category">TRAVEL</p>
                        <p class="title" id="popup_detail_title">마테호른에서 커피 한 잔 하기1</p>
                    </li>
                    <li class="detail-share-btns">
                        <div class="checked-detail-add-btn change-add-check"><img src="_resource/images/discover/etc/add-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-add-btn change-add-btn"><img src="_resource/images/discover/etc/add-btn.png" alt="" /></a>

                        <div class="checked-detail-like-btn change-like-check"><img src="_resource/images/discover/etc/like-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-like-btn change-like-btn"><img src="_resource/images/discover/etc/like-btn.png" alt="" /></a>

                        <a href="#" class="detail-share-btn"><img src="_resource/images/discover/etc/share-btn.png" alt="" /></a>
                        <div class="detail-small-share-btns">
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_twitter.png" alt="1" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_kakao.png" alt="2" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_facebook.png" alt="3" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_close.png" alt="4" /></a>
                        </div>
                    </li>
                    <li class="detail-top-btns">
                        <div class="dots">
                            <a href="#" class="active"></a>
                            <a href="#"></a>
                            <a href="#"></a>
                        </div>
                        <a href="#" class="detail-popup-close"><img src="_resource/images/discover/library/popup/close-btn.png" alt="" /></a>
                    </li>
                </ul>
            </div>
            <div class="info-container">
                <div id="info-left">
                    <ul class="info-left-ul">
                        <li class="tags tag-btns-group"  id="popup_detail_tags">
                            <a href="#"><span>#</span>스위스</a>
                            <a href="#"><span>#</span>마테호른</a>
                            <a href="#"><span>#</span>알프스의여왕</a>
                        </li>
                        <li class="desc" id="popup_detail_desc">
                            눈과 얼음으로 뒤덮인 알프스 산맥의 마테호른에 올라 장엄한 풍경을 바라보면서 여유 있게 커피 한 잔을 즐겨봅니다.
                            장엄한 풍경을 바라보면서 여유 있게 커피 한 잔을 즐겨봅니다. 눈과 얼음으로 뒤덮인 알프스 산맥의 마테호른에
                            올라 장엄한 풍경을 바라보면서 여유 있게 커피 한 잔을 즐겨봅니다.
                        </li>
                        <li class="links">
                            <dl id="popup_detail_urls">
                                <dt>관련링크</dt>
                                <dd>알프스 관광청 <a href="#">alps.vvco.kr</a></dd>
                                <dd>마테호른 커피 <a href="#">mathehornecoffee.co.kr</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
                <div id="info-right">
                    <ul>
                        <li class="title"><span id="popup_detail_bucket_cnt">300</span>명이 이 버킷 리스트를 함께 합니다.</li>
                        <li class="person-list" id="popup_detail_bucket_list" style="display: none;">
                         
                           <!--  
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2">
                                <defs>
                                <mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)">
                                <image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" />
                                </mask>
                                </defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                         -->   
                        </li>
                        <li class="zero-person-info" style="display: none;">
                            <img src="_resource/images/discover/etc/popup-zero-person-icon.png" alt="" />
                            <div class="desc1">이 버킷 리스트를</div>
                            <div class="desc2">추가한 <span>최초의 1인</span>이 되어 보세요!</div>
                        </li>
                        <li class="info-prev-next">
                            <a href="javascript:Popup.detailBucketList('prev');" class="info-prev"><span>이전</span></a>
                            <div class="info-count en" id="popup_detail_bucket_list_page"><span >1</span> / 0</div>
                            <a href="javascript:Popup.detailBucketList('next');" class="info-next"><span>다음</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    

    
    <div id="person-bucket-popup" class="person-bucket-popup popup-group">
        <div class="person-bucket-container">
             
        </div>
    </div>
    

    
    <div id="featured-gate-popup" class="featured-gate-popup popup-group">
        <div class="gate-popup-box">
            <div class="gate-bg"><img src="_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="gate-container">

            </div>
        </div>
    </div>
    

    
    <div id="featured-detail-popup" class="featured-detail-popup popup-group">
        <div class="f-detail-popup-box">
            <div class="f-detail-bg"><img src="_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="f-detail-container">

            </div>
        </div>
    </div>
    

    
    <div id="share-popup" class="share-popup popup-group">
     	<input type="hidden" id="SNS_SHARE_KEY">
     	<input type="hidden" id="SNS_SHARE_MEM_KEY" value="20171205B000010261">
     	<input type="hidden" id="SAVE_SNS_SHARE_KEY">
     	<input type="hidden" id="SAVE_SNS_SHARE_CTGR">
     	<input type="hidden" id="SAVE_SNS_SHARE_TEXT">
     	<input type="hidden" id="SAVE_SNS_SHARE_IMAGE">
     	
        <ul class="share-popup-ul">
            <li class="share-popup-title"><span>채홍기</span> 님의<br> 버킷리스트를 SNS에 공유해보세요.</li>
            <li class="share-popup-info"><span>ㆍ</span> 아래 이미지가 SNS에 공유됩니다.</li>
            <li class="share-popup-img">
                
                <div class="share-popup-contents">
                    <img src="_resource/images/discover/library/share-popup-sample.png"  id="SNS_SHARE_IMAGE"/>
                    <div class="share-popup-dimmed"></div>
                    <div class="share-popup-contents-copy">
                        <p class="en" id="SNS_SHARE_CTGR">SPORTS</p>
                        	<span  id="SNS_SHARE_TEXT">하와이에서 서핑 마스터하기</span>
                    </div>
                </div>
            </li>
            <li class="share-popup-btns">
                <a href="#" class="share-fb">
                
                    페이스북 공유
                </a>
          <!--        <a href="#" class="share-tw">
                    <div>
                        <img src="_resource/images/discover/etc/tw-icon.png" />
                        <img src="_resource/images/discover/etc/tw-icon_on.png" class="on" />
                    </div>
                    트위터 공유
                </a>-->
                <a href="#" class="share-ks">
              
                    카카오스토리 공유
                </a>
            </li>
            <li class="share-popup-close"><a href="#"><img src="_resource/images/discover/share-popup-close.png" /></a></li>
        </ul>
    </div>
    
    
    
    <script>
    	function setSnsShareData( sns_share_key,sns_share_ctgr, sns_share_text, sns_share_image){
    	 
    		$("#SNS_SHARE_KEY").val(sns_share_key);
    		$("#SNS_SHARE_CTGR").text(sns_share_ctgr);
    		$("#SNS_SHARE_TEXT").text(sns_share_text);
    		$("#SNS_SHARE_IMAGE").attr("src",sns_share_image);
    		
    		
    	}
    	
    	function setSnsSareSaveData(sns_share_key,sns_share_ctgr, sns_share_text, sns_share_image ){
    		$("#SAVE_SNS_SHARE_KEY").val(sns_share_key);
    		$("#SAVE_SNS_SHARE_CTGR").val(sns_share_ctgr);
    		$("#SAVE_SNS_SHARE_TEXT").val(sns_share_text);
    		$("#SAVE_SNS_SHARE_IMAGE").val(sns_share_image);
    	}
    	function loadSnsShareData(  ){
       	 
    		$("#SNS_SHARE_KEY").val($("#SAVE_SNS_SHARE_KEY").val());
    		$("#SNS_SHARE_CTGR").html($("#SAVE_SNS_SHARE_CTGR").val());
    		$("#SNS_SHARE_TEXT").html($("#SAVE_SNS_SHARE_TEXT").val());
    		$("#SNS_SHARE_IMAGE").attr("src",$("#SAVE_SNS_SHARE_IMAGE").val());
    		
    		
    	}   	
    </script>
    
</div>



        
    </div>
</div>

 
 

 
<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/jquery.cookie.js"></script>
<script src="_resource/js/vendor/spin.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>
<script type="text/javascript" src="_resource/js/sns_add.js" charset="utf-8"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>

</body>
</html>
<script src="_resource/js/discover/Discover.BucketCart.js"></script>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="_resource/js/discover/Discover.Common.js"></script>
<script src="_resource/js/discover/Discover.Search.js"></script>
<script src="_resource/js/discover/Discover.Popular.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8" ></script>
<script type="text/javascript">


setGnb(0);

</script>

<script>

Popup.$returnURL = "/NewFile.html";
//if(window.sessionStorage.length <1 ) {

setTimeout(function(){
    Library.addMainList("");
}, 200);

//}


Popup.$PageType=0;//library 
</script>
