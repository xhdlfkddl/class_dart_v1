// 상속을 하지 말아야 하는 경우!!
class Engine {
  String? name;
  int? price;
}

class Car {
  // 상속관계를 만들기 애매할 때는
  // 아래와 같이 포함관계로 만들어줘야함
  Engine? engine;

  String? name;
  int? price;
}