// import 'dart:convert';
//
// import 'package:demo_run/model/article_model.dart';
// import 'package:http/http.dart' as http;
//
// class NewsApiService{
//   final endPointUrl = 'https://newsapi.org/v2/everything?q=(Extreme weather)&apiKey=277f3da098c94add937b44485e2c3684';
//
//   Future<List<Article>> getArticle() async {
//     var Response = await http.get(Uri.parse(endPointUrl));
//     if(Response.statusCode == 200) {
//       Map<String, dynamic> json = jsonDecode(Response.body);
//
//       List<dynamic> body = json['articles'];
//
//       List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
//       return articles;
//     }
//     else{
//       throw("Can't get the Article");
//     }
//   }
//
// }