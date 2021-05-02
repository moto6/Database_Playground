USE `market`;
DESC item;



INSERT INTO item(title, description, price, category) values
('베트남 곱창 쌀국수','베트남의 그맛과 감동을 그대로 쌀국수',3300,'BEST'),
('할머니의 멸치국수','할머니의 손맛 멸치국수',1900,'BEST'),
('왕큰만두','왕크니까 왕맛있는 왕큰만두',9300,'BEST'),
('서해간장개장','서해의 크고 알흠다운 꽃게들로 가득찬 간장게장',39300,'BEST'),
('윤식당의 불고기반찬','밥반찬에도 술안주에도 잘어울리는',6300,'MAIN'),
('쿠퍼한테물어서알아낸순대국맛집','선릉역맛집농민백암순대',9000,'MAIN'),
('골뱅이무침','소중한식사 골뱅이무침195g',24300,'MAIN'),
('스미스가좋아하는한옥','버섯리조또',39900,'MAIN'),
('전복전복죽','전복죽 너무 사랑해 늘 새로워 짜릿해',9300,'SOUP'),
('유기농 친환경 당근쥬스','건강을 위해서 참고 먹어요 친환경 당근주스',19300,'SOUP'),
('한국인의 김치','김치는 한국인들을 위한 필수요소',7000,'SOUP'),
('견과류선물셋트','선물은 역시나 편한 견과류가 최고야',19300,'SOUP'),
('곰곰 우유식짱',' ',1900,'SIDE'),
('추억과 공포의 옜날꿀호떡',' ',8800,'SIDE'),
('생크림 카스테라',' ',29300,'SIDE'),
('오븐에 구운 도나쓰',' ',63500,'SIDE'),
('햄버거',' ',5000,'SIDE');
('[아내가쉐프했다]풍성한 고기반찬 찜닭요리','아내의쉐프가 자신 있게 만들어서 이름도 아쉐찜닭',9900,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg'
,'BEST'),

('[사계절]편리한 반찬세트 - 사계절 건강식당 작은상','마포엄마들이 사랑해온 건강반찬 사계절 건강식',19900,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/201410/13/b8b0a0aba3386f030155b6cb0c1c75fa.jpg'
,'BEST'),

('[옹가솜씨] 소고기쩜짜장 280g','옹가솜씨 한국인의 쏘울푸드 쩜짜장 짱맛있다!',14900,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/H05FB/6ff744c6f36ba437a4f8b9e9a000b0b1.jpg'
,'BEST'),
('미노리키친] 규동 250g','전세계인의 소울프도 한국인들도 좋아하는 소고기덮밥',76600,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/HBDEF/289b0fb6c14d2c8cd161205f8dadfa7a.jpg'
,'BEST'),

('[신논현 맛집]돼지국밥맛집','종가집 1000년전통 돼지고기로 만든 순대!!',9000,'EVENT, LAUNCHING','DOMESTIC_POST'
,'MAIN'),

('[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥',7000,'EVENT','DOMESTIC_POST, NEXT_DAY'
,'MAIN'),

('[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g','탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.',27000,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'MAIN'),

('[빅마마의밥친구] 아삭 고소한 연근고기조림 250g','편식하는 아이도 좋아하는 건강연근조림',5500,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SIDE'),

('[미노리키친] 일본식 우엉조림(킨피라고보) 80g','한국식 우엉조림과는 다른 진한 감칠맛',3500,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SIDE'),

('[마더앤찬] 명란치즈계란말이 230g','아이반찬으로 최고 계란말이',3779,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SIDE'),

('[모이세] 육개장 1팩(600g)','제주3대해장국 맛집의 인기메뉴',4400,'LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SOUP'),

('[수하동] 특곰탕 850g]','100% 한우양지로 끓여낸 70년전통의 서울식곰탕',18000,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SOUP'),

('[빅마마의밥친구] 된장찌개 900g','항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개',8500,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SOUP'),

('[모이세] 육개장 1팩(600g)','제주3대해장국 맛집의 인기메뉴',4400,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'SOUP');


SELECT * from item;
DELETE * FROM item;