import 'dart:convert';

import 'package:flutter_fetching_data/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://65587b9ce93ca47020a9606c.mockapi.io/user';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        // print(response.body);
        Iterable it = jsonDecode(response.body);
        List<User> user = it.map((e) => User.fromJson(e)).toList();
        return user;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
