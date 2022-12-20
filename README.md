---
## 1. 소개
#### 네이버 웹툰을 API 형태로 크롤링해 화면에 띄우는 앱을 작성.
---
## 2. 파일 설명
### 2-1. [main.dart](https://github.com/qlife1146/webtoon/blob/master/lib/main.dart)
- main을 담은 파일. [home_screen.dart]로 이동.
### 2-2. [home_screen.dart](https://github.com/qlife1146/webtoon/blob/master/lib/screens/home_screen.dart)
- 최상단 화면을 구성하는 파일. API 데이터를 [webtoon_widget.dart](https://github.com/qlife1146/webtoon/blob/master/lib/widgets/webtoon_widget.dart) 형태로 가공한 후, 리스트로 출력.
### 2-3. [detail_screen.dart](https://github.com/qlife1146/webtoon/blob/master/lib/screens/detail_screen.dart)
- 웹툰 리스트를 눌렀을 때 나오는 상세 페이지를 다룬 파일. Hero 위젯을 사용해 애니메이션을 부여함.
### 2-4. [webtoon_widget.dart](https://github.com/qlife1146/webtoon/blob/master/lib/widgets/webtoon_widget.dart)
- 웹툰 리스트의 형태를 담은 위젯 파일. 아무 가공없이 출력하면 앰퍼샌드(&apm;)가 나와서 지워주는 코드를 추가.

### 2-5. [webtoon.dart](https://github.com/qlife1146/webtoon/blob/master/lib/models/webtoon.dart)
- API 데이터를 담는 구조를 다룬 파일.
### 2-6. [api_service.dart](https://github.com/qlife1146/webtoon/blob/master/lib/services/api_service.dart)
- api 데이터를 [webtoon.dart](https://github.com/qlife1146/webtoon/blob/master/lib/models/webtoon.dart)의 구조로 바꾸어 리턴해주는 파일.
