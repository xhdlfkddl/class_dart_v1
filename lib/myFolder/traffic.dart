class Subway {
  int lineNumber;
  int count;
  int money;

  Subway(this.lineNumber, this.count, this.money);

  // 승객을 태운다
  void take(int money) {
    this.money += money;
    this.count++;
  }

  void showInfo() {
    print('${this.lineNumber}호선의');
    print('수익금은 ${this.money}원 이고');
    print('${this.count}명의 승객이 탑승하고 있습니다.');
  }
}

class Student {
  String name;
  int money;

  Student(this.name, this.money);

  // 학생이 버스를 탄다.
  // 학생이 지하철을 탄다.
  void takeSubway(Subway subway) {
    this.money -= 1300;
    subway.take(1300);

    print('${this.name}가 ${subway.lineNumber}호선을 탑승하여 1300원을 지불하였습니다.');
    print('잔액은 ${this.money}원 입니다.');
    print('---------------------');
  }
}

void main() {
  Subway line1 = Subway(1, 0, 0);
  Subway line2 = Subway(2, 0, 0);
  Subway line3 = Subway(3, 0, 0);

  Student student1 = Student('티모', 10000);
  Student student2 = Student('야스오', 5000);

  student1.takeSubway(line2);
  line2.showInfo();

  print('---------------------');

  student2.takeSubway(line2);
  line2.showInfo();
}
