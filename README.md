# wanted_pre_onboarding 과제

## 구성: Api,Cell,Model,Viewcontroller

### Api : WeatherApi에서 URLSession을사용하여 URLSessionDataTask를 생성하고 이를 통해 서버와의 통신을 하여 Api통신을 하였습니다.

### Cell : Cell에서 사용될 아울렛변수와 이미지뷰를 연결하고, Image url로 이미지를 불러와 비동기 방식으로 구현하였습니다.

### Model :1.WeatherCodable : Api통신을 통해 불러올 구조체를 만들었습니다. 2.ImageCaching: ImageCache 클래스를 만들어 캐시된 정보가 있다면 캐시 이미지를 사용, 캐시된 정보가 없다면 Api로부터 이미지를 받아옵니다. 3.ReplacingString : String에 익스텐션을하여 ReplacingStringString함수를 만들어 if문으로 해당문자를 변환해줍니다.

### Viewcontroller : WeatherViewController로 테이블뷰에서 cell을 읽어올수있도록 Delegate, DataSource를  사용해주었으며 cell을 선택하였을때 SubViewController 로 화면전화을 구현하여 주었습니다.
