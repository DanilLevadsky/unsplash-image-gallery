import 'dart:convert';

import 'package:http/http.dart';

const String url = 'https://api.unsplash.com/photos/random/?client_id=ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9&count=30';

class Data {
  Future<dynamic> getData() async  {
    Response response = await get(url);
    var json = jsonDecode(response.body);
    return json;
  }
}