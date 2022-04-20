import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../models/data%20models/some_posts/some_posts.dart';

class SomeDataService {
  Future getData() async {
    // Map queryParameters = {};
    Uri uri = Uri.https('jsonplaceholder.typicode.com', '/posts');

    final response = await http.get(
      uri,
      // headers: {
      //   'X-RapidAPI-Host': 'dad-jokes.p.rapidapi.com',
      //   'X-RapidAPI-Key': ''
      // },
    );

    List<SomePosts> posts;

    posts = (response.body as List).map((e) => SomePosts.fromJson(e)).toList();

    return posts;
  }
}
