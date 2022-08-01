import 'package:http/http.dart';
import 'dart:convert';
class Fetch{
  final String url;

  Fetch(this.url);

  Future fetchData() async{
    Response response = await get (Uri.encodeFull(url));

    if (response.statusCode == 200){
      return json.decode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}