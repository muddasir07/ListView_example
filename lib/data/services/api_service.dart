import 'dart:convert';
import 'package:demo_app/data/services/app_urls.dart';
import 'package:http/http.dart' as http;
import '../models/listModel.dart';


class ApiService {

  //Fetching Data
  Future<List<ListModel>> getListItems() async {
    final response = await http.get(Uri.parse(ApiUrl.posts));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((post) => ListModel.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
