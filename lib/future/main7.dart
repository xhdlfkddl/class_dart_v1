import 'dart:convert';

void main() {
  // 여러 줄의 문자열 (''' ''')
  String jsonStr = '''
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
  ''';

  // 1단계
  // JSON 문자열 형식을 Map 구조로 파싱
  print('jsonMap: ${json.decode(jsonStr).runtimeType}');

  // json.decode() 메서드를 사용, Map 구조로 변환한 결과
  print('jsonMap: ${json.decode(jsonStr)}');

  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print('$key: $value');
  });
  var myId = jsonMap["id"];

  Todo myTodo = Todo.fromJson(jsonMap);
  print(myTodo.userId);
  print(myTodo.id);
  print(myTodo.title);
  print(myTodo.completed);
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  // 명명된 생성자
  // 클래스 이름.생성자 이름(데이터 타입 변수명)
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];
}