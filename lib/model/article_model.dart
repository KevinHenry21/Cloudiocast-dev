class ArticleModel {
   String? author;
   String title;
   String description;
   String? url;
   String urlToImage;
   String? content;

   ArticleModel(
  {
     // this.source,
     this.author,
     required this.title,
    required this.description,
     this.url,
    required this.urlToImage,
     this.content
  });

  // factory ArticleModel.fromJson(Map<String, dynamic> json){
  //   return ArticleModel(
  //     source: Source.fromJson(json['source']),
  //     author: json['author'] as String,
  //     title: json['title'] as String,
  //     description: json['description'] as String,
  //     url: json['url'] as String,
  //     urlToImage: json['urlToImage'] as String,
  //     publishedAt: json['publishedAt'] as String,
  //     content: json['content'] as String,
  //   );
  // }
}