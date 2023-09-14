class Animal {
  void eat() {
    print('밥 먹는당');
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print('강아지가 밥 먹는당');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print('고양이가 밥 먹는당');
  }
}

void main() {
  // 다양한 형태로 바라볼 수 있다.
  // = 다형성
  Animal animal1 = Cat();
  Animal animal2 = Dog();

  // 다형성의 이점
  // 자료구조
  List<Animal> animals = [animal1, animal2];
  animals.forEach((e) {
    e.eat();
  });
}