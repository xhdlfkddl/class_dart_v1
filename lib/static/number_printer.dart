class NumberPrinter {
  // 식별자
  int _id;
  // 선언과 동시에 초기화(= 값을 할당)
  static int waitNumber = 1;

  NumberPrinter(this._id);

  void printWaitNumber() {
    print('대기순번: ${waitNumber}');
    waitNumber++;
  }
}

void main() {
  NumberPrinter numberPrinter = NumberPrinter(1);
  numberPrinter.printWaitNumber();
  numberPrinter.printWaitNumber();
  numberPrinter.printWaitNumber();
  print('========================================');
  NumberPrinter numberPrinter2 = NumberPrinter(2);
  numberPrinter2.printWaitNumber();
  numberPrinter2.printWaitNumber();
  numberPrinter2.printWaitNumber();
}