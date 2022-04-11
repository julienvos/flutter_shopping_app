import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shopping_app/models/data%20models/dad_jokes/dad_jokes.dart';

class SomeDataService {
  Future getData() async {
    // Map queryParameters = {};
    Uri uri = Uri.https('dad-jokes.p.rapidapi.com', '/random/joke');

    final response = await http.get(
      uri,
      headers: {
        'X-RapidAPI-Host': 'dad-jokes.p.rapidapi.com',
        'X-RapidAPI-Key': '3526f793f3msh99aa583711df8d3p182172jsn53bb75918485'
      },
    );

    return DadJokes.fromJson(response.body);
  }
}
