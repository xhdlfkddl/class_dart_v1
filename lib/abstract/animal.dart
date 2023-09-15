abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}
// 해결 방법: 위 클래스를 구현 클래스로 바꾸기, @override 하기
// @override 했는데도 Dog 에 에러가 사라지지않음.
class Dog extends Animal {
  // 메모리에 Animal을 먼저 올려주면 됨.
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name가 멍멍 짖습니다.');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name가 야옹 웁니다.');
  }
}

void main() {
  // 리스트에 객체 넣기
  Dog dog = Dog('아토');
  Cat cat = Cat('나비');

  List<Animal> animals = [dog, cat];

  // 반복문으로 실행하기
  for(var a in animals) {
    a.makeSound();
    print('==================');
  }
}