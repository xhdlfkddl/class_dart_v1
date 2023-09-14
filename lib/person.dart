void main() {
  // Person person = new Person();
  Person personKim = Person();

  personKim.myName = '김홍길동';
  personKim.phone = '010-2222-9999';
  personKim.age = 12;

  personKim.displayInfo();

}

// 클래스 설계하기
class Person {

  // dart 2.2 version 이후 부터 진행됨.
  // nullable 타입에 대한 이해.
  // dart 이전 버전에서는 모든 변수가 null이 아닌 값으로 세팅 되었음
  // 명시적으로 null을 허용하는 여부를 표현할 수 있는 타입이 nullable 타입임
  // String != String? 다른 타입임.
  String? myName;
  String? phone;
  int? age;


  void displayInfo() {
    print('Person name : $myName');
    print('Phone number : $phone');
    print('Age: $age');
  }
}