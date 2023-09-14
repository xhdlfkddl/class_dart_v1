class Table {
  String? name;
  String? color;

  // 이름이 있는 매개변수를 설정할 수 있다.
  // 이름이 있는 매개변수는 '{}' 를 사용하여 가독성을 높일 수 있다.
  Table({this.name, this.color});

  void display() {
    print('name: ${this.name}');
    print('color: ${this.color}');
  }
}

void main() {
  // Table table1 = Table('IKEA 책상', '검은색');
  Table table1 = Table(name: 'IKEA 식탁', color: '베이지');
  table1.display();
}