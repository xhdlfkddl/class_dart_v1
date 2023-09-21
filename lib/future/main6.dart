// -> MySql 처럼 별칭을 사용
import 'package:http/http.dart' as http;

void main() {
  // https://jsonplaceholder.typicode.com/posts
  getPost().then((res) {
    print('res.body: ${res.body}');
  });
}

Future<http.Response> getPost() async {
  const url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.post(Uri.parse(url));

  return response;
}
