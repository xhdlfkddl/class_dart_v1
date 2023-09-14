/// 도전과제
/// Laptop class 설계 - 멤버 데이터 name, color
/// 생성자 정의 name, color
/// MacBook class 설계 Laptop 상속 - 초기화 이니셜 라이즈 사용
class Laptop {
  String? name;
  String? color;

  Laptop(String name, String color) {
    print('Laptop 생성자 호출');
    this.name = name;
    this.color = color;
  }

  // 재정의
  @override
  String toString() {
    return 'name: $name, color: $color';
  }
}

class MacBook extends Laptop {
  // 이렇게 만드는 이유
  // MacBook(name, color) : super(name, color);
  // 초기화 이니셜라이즈에 body를 붙여 코드를 추가할 수 있음
  MacBook(name, color) : super(name, color) {
    print('body에 코드 작성 가능');
  }
}

void main() {
  MacBook mac = MacBook('맥북프로', '스페이스실버');
}