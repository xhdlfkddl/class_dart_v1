class Employee {
  // 변수를 private으로 선언하는 방법
  // 변수 명 앞에 '_'를 붙이면 private 속성을 뜻함.
  int? _id;
  String ? _name;

  // getter
  int getId() {
    return _id!;
  }

  String getName() {
    return _name!;
  }

  // setter
  void setId(int id) {
    // 방어적 코드 작성 가능
    if (id < 0) {
      print('잘못된 값을 입력 했습니다.');
    }
    this._id = id;
  }

  void setName(String name) {
    this._name = name;
  }

}