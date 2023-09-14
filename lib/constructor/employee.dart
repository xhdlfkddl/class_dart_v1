void main() {
  Employee employee1 = Employee('홍길동', 20);
  employee1.display();
  
  print('-------------------------');

  Employee employee2 = Employee('이순신', 50, 'IT', 9000);
  employee2.display();
}

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // 1단계
  // 생성자 안에 [] 는 옵션 값을 뜻함 = 필수 값인지 아닌지 설정할 수 있음
  // Employee(this.name, this.age, [this.subject, this.salary]);

  // 2단계
  // 생성자 옵션에 기본 값을 할당해 줄 수 있다.
  Employee(this.name, this.age, [this.subject = 'N/A', this.salary = 0.0]);

  void display() {
    print('NAME: ${this.name}');
    print('AGE: ${this.age}');
    print('SUBJECT: ${this.subject}');
    print('SALARY: ${this.salary}');
  }
}