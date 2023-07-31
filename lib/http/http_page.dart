import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {

  fetch();
}

Future fetch() async {
  var url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(url));
  print(response.body);
}
