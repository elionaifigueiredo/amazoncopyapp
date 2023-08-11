import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {

  Future future = getPosts();

  // tratamento com callBack then e catchError
  future.then((value) => print(value)).catchError((error)=> print(error));


}

Future getPosts() async {

    final client = http.Client();
    final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await client.get(uri);
    final result = jsonDecode(response.body);

    return result;

}
