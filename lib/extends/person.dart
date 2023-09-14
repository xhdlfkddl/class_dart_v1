class Person {
  String? name;
  int? age;

  void display() {
    print('name: $name');
    print('age: $age');
  }
}

class Student extends Person{
  // 부모에 있는 속성과 메서드를 물려받을 수 있음.
  String? schoolName;
  String? schoolAddress;

  // @override
  void display() {
    print('name: $name');
    print('age: $age');
    print('schoolName: $schoolName');
    print('schoolAddress: $schoolAddress');
  }
}

void main() {
  Student student = Student();
  student.name = '길동';
  student.age = 12;
  student.schoolAddress = '부산';
  student.schoolName = '그린초';
  student.display();

}