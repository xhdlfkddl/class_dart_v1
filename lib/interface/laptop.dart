// 일반 클래스를 사용한 방법
class Laptop {
  // return 타입이 void 라면 생략 가능함.
  turnOn() {
    print('Power on');
  }

  turnOff() {
    print('Power off');
  }
}

class MacBook implements Laptop {
  @override
  turnOn() {
    print('맥북 전원을 켭니다.');
  }

  @override
  turnOff() {
    print('맥북 전원을 끕니다.');
  }
}

void main() {
  MacBook macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
}