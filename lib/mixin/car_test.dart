mixin ElectricCar {
  void chargeElectricity() {
    print('전기를 충전합니다.');
  }
}

mixin PetroCar {
  void chargePetrol() {
    print('기름을 보충합니다.');
  }
}

// 전기 자동차
class Car1 with ElectricCar {

}

// 가솔린 자동차
class Car2 with PetroCar {

}

// 하이브리드 자동차
class HybridCar with ElectricCar, PetroCar {
  @override
  void chargeElectricity() {
    super.chargeElectricity();
    print('테슬라 전용 충전기를 선택합니다.');
  }

  @override
  void chargePetrol() {
    super.chargePetrol();
    print('GS 칼텍스에서 주유를 시작합니다.');
  }
}