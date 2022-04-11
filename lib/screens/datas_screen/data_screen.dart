import 'package:flutter/material.dart';
import 'package:shopping_app/models/data%20models/dad_jokes/dad_jokes.dart';

import 'package:shopping_app/network/data_service/other_data_service.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final TextEditingController _controller = TextEditingController();
  final _dataservice = SomeDataService();

  DadJokes? _response;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'type some food',
            prefixIcon: const Icon(Icons.search),
            border:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        ElevatedButton(onPressed: searchJoke, child: Text("Search Joke")),
        Column(
          children: [
            if (_response != null) Text('${_response!.body![0].setup}')
          ],
        )
      ],
    ));
  }

  void searchJoke() async {
    final response = await _dataservice.getData();
    setState(() {
      _response = response;
    });
  }
}
