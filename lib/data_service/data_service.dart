import 'package:http/http.dart' as http;

// "https://api.edamam.com/search?q=chicken&app_id=${YOUR_APP_ID}&app_key=${YOUR_APP_KEY}&from=0&to=3&calories=591-722&health=alcohol-free"

class DataService {
  getData(String city) async {
    Map<String, String> queryParameters = {'q': city, 'days': '3'};

    Map<String, String> _headers = {
      'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
      'X-RapidAPI-Key': '3526f793f3msh99aa583711df8d3p182172jsn53bb75918485'
    };

    final uri = Uri.https(
      'weatherapi-com.p.rapidapi.com',
      '/forecast.json',
      queryParameters,
    );

    final response = await http.get(uri, headers: _headers);

    print(response.body);
  }
}
