import 'dart:convert';

void main() {
  // https://jsonplaceholder.typicode.com/posts
  String jsonData = ''' 
    {
      "userId": 1,
      "id": 1,
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body": "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
    }
  ''';
  Map<String, dynamic> jsonMap = json.decode(jsonData);
  Todo todo = Todo.parseJson(jsonMap);
  print('userId: ${todo.userId}');

}

class Todo {
  int userId;
  int id;
  String title;
  String body;

  Todo.parseJson(Map<String, dynamic> json)
    : userId = json['userId'],
      id = json['id'],
      title = json['title'],
      body = json['body'];
}