class Animal {
  // 속성을 만들어보세요
  String? dog;
  String? cat;
  // 기능을 만들어주세요

  showInfo () {
    print('$dog가 밥을 먹는다.');
    print('$cat가 잠을 잔다.');
    print('$dog와 $cat가 싸운다.');
  }
}

void main() {
  // 실행 및 테스트
  Animal animal = Animal();

  animal.dog = '아토';
  animal.cat = '보리';
  animal.showInfo();

}