class MyClass {
  late String name;

  MyClass() {
    // 서버에서 요청한 값을 받아서 클래스를 만들어야 될 때 사용
    // 통신을 통해 초기 값을 받아야 하는 경우 사용 가능.
    print('name: $name');
  }

  void printString() {
    print('name: $name');
  }
}

void main() {
  final myObject = MyClass();
  // 예외발생
  myObject.printString();
}