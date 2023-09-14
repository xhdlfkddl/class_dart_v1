// 주사위 게임
// 주사위의 숫자는 열거형으로 설계.
// dart:math 랜덤 변수 하나 출력
// switch 구문을 사용하여 패턴 매칭 (enum - 랜덤 숫자)

import 'dart:math';

enum DiceNum { one, two, three, four, five, six }


void main() {
  Random random = Random();

  // var diceNum = DiceNum.one;
  int randomNum = random.nextInt(6) + 1;

  switch(randomNum) {
    case randomNum = 1 :
      print(DiceNum.one);
      break;
    case randomNum = 2 :
      print(DiceNum.one);
      break;
    case randomNum = 3 :
      print(DiceNum.one);
      break;
    case randomNum = 4 :
      print(DiceNum.one);
      break;
    case randomNum = 5 :
      print(DiceNum.one);
      break;
    case randomNum = 6 :
      print(DiceNum.one);
      break;
    default:
      print('몰라용ㅋ');
  }

}