void main() {
  // 1. null 에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;

  // maybeName 이 null이 아니면 문자열 길이를 return,
  // null 이면 길이값 0을 return 한다.
  int length = maybeName?.length ?? 0;

  print("length: $length");

  // 2. null 에 안전한 객체 메서드 접근
  // 문자열 또는 null을 반환
  String? name = getName();
  String returnName = name?.toLowerCase() ?? "nobody";
  print(returnName);

  // 3.
  String displayName = name ?? "Unkown";
  print("displayName: $displayName");
}

String? getName() {
  return null;
}