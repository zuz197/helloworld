import 'dart:convert';
import 'package:http/http.dart' as http;
import 'news_model.dart';

class NewsApi {
  static const String apiKey = "fe5a8e32270c7299548429489a2d36de";

  static Future<List<News>> fetchNews() async {
    final url = Uri.parse(
      "https://gnews.io/api/v4/top-headlines?lang=vi&country=vn&max=10&token=$apiKey",
    );

    final response = await http.get(url);

    print("Response: ${response.body}"); // Debug

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      return (jsonData["articles"] as List)
          .map((e) => News.fromJson(e))
          .toList();
    } else {
      throw Exception("Không load được dữ liệu tin tức");
    }
  }
}
