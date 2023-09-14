class Student {
  // 생성자를 만든 뒤에는 ? = nullable 타입을 제거해줘도 됨.
  String name;
  int age;
  int rollNumber;

  // 1단계
  // 기본 생성자 - 기본형
  // Student(String name, int age, int rollNumber) {
  //   this.name = name;
  //   this.age = age;
  //   this.rollNumber = rollNumber;
  // }

  // 2단계
  // 기본 생성자 - 단일 라인 생성자
  Student(this.name, this.age, this.rollNumber);
}