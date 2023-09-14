class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo() {
    print('상품명: $name');
    print('가격: $price');
  }
}

class Peach extends Fruit{
  Peach(super.name, super.price);
}

class Banana extends Fruit {
  String origin;

  Banana(super.name, super.price, this.origin);
}

void main() {
  // 업캐스팅, 다운캐스팅의 의미
  List<Fruit> fruits = [Banana('델몬트 바나나', 3000, '필리핀'),
                        Peach('천도 복숭아', 5000)];
  fruits[0].name;
  fruits[0].price;
  // 업캐스팅 된 상태(= 컴파일 된 시점에 'Friut' 타입으로 인식하고 있음)
  fruits[0].showInfo();
  // 컴파일 시점에 선언되어 데이터 타입까지만 확인할 수 있음.
  // fruits[0].origin;

  // 업캐스팅 된 상태 Banana에 origin 변수에 접근하는 방법
  // = 컴파일 시점에 형변환 처리를 하면 됨

  // 자바에서 다운캐스팅(형변환)
  // Banana banana1 = ((Banana)fruits[0]).origin;

  // Dart에서 다운캐스팅
  // as: 상속관계에서 형 변환을 처리할 수 있음
  Banana banana1 = fruits[0] as Banana;
  print(banana1.origin);

}