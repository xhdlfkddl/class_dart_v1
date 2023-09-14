class Employee {
  String? name;
  static int nextEmployeeNumber = 1000;
  int employeeNumber = 0;

  Employee(String name) {
    this.name = name;
    employeeNumber = nextEmployeeNumber;
    nextEmployeeNumber++;
  }

  // 함수
  // 독립적인 일련의 코드 묶음
  // 메서드
  // 멤버 변수를 활용하여 기능을 구현함
  void display() {
    print('이름: ${name}');
    print('사원 번호: ${employeeNumber}');
    print('---------------------------');
  }
}

void main() {

  // 코드 작성 시 제약 조건
  // Employee class 안에 사원 번호 data를 받는 변수를 선언.
  // 단, Employee 인스턴스화 되면 사원 번호는 +1 씩 될 수 있도록 설정.
  Employee emp1 = Employee('길동');
  Employee emp2 = Employee('둘리');
  Employee emp3 = Employee('또치');

  emp1.display();
  emp2.display();
  emp3.display();

  print(Employee.nextEmployeeNumber);
}