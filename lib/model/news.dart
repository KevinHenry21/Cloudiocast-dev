import 'dart:convert';

import 'article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url = "https://newsapi.org/v2/everything?q=(Extreme weather)&apiKey=277f3da098c94add937b44485e2c3684";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == 'ok'){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'] as String?,
            description: element['description'],
            url: element['url'] as String?,
            urlToImage: element['urlToImage'],
            content: element['context'] as String?,
          );

          news.add(articleModel);
        }
      });
    }
  }
}