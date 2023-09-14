class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print('$name is making a sound.');
  }
}

// 부모 클래스에 생성자가 존재하여 extends 하는 순간 오류 발생
// super 를 해줘야 오루가 사라짐.
class Dog extends Animal {
  String? breed;

  // 자바에서 사용했던 방식
  // Dart 에서는 허용 하지 않음.
  // Dog(String name, int age) {
  //   super(name, age);
  // }

  // Dart 에서는 이렇게!!
  // 1단계
  // Dog(super.name, super.age);

  // 2단계
  // - 초기화 이니셜라이저(initializer)
  Dog(name, age, this.breed) : super(name, age);

  @override
  void speak() {
    super.speak();
    print('$name가 짖는다.');
  }
}

void main() {
  // Dog ato = Dog('아토', 10);
  Dog ato = Dog('아토', 10, '코카스파니엘');

  ato.speak();
}