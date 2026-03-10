import 'dart:convert';
import 'package:http/http.dart';

class ApiService {

  final httpClient = Client();

  String apiBaseUrl = "https://dummyjson.com/";

  Future getRequest({required String endpoint}) async {

    final Uri url = Uri.parse("$apiBaseUrl$endpoint");

    final response = await httpClient.get(url);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    }

    return null;
  }
}