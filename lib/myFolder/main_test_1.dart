void main() {

  List<String> cardList = ['10', 'J', 'Q', 'K', 'A'];

  for (String card in cardList) {
    print('나의 카드: $card');
  }
  print('----------------------------');

  String name = '홍길동';
  // Rune <-- 유니코드
  for (var codePoint in name.runes) {
    print('문자 표 안에 mapping 되어있는 값: $codePoint');
  }

}