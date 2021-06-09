import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  String url;
  String data;
  Network(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      data = response.body;
      print(response.body);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
