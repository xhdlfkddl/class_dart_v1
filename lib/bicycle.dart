class Bicycle {

  String? color;
  int? size;
  int? currentSpeed;

  // 생성자
  Bicycle() {
    print('기본 생성자');
  }

  // 기능 - 메서드는 동사로 시작을 권장함
  //        선언부        //
  void changeGear(int gear) {
    // body
    currentSpeed = gear;
  }

  void showInfo() {
    print('Color: $color');
    print('Size: $size');
    print('Current Speed: $currentSpeed');
  }

  @override
  String toString() {
    return super.toString();
  }

}