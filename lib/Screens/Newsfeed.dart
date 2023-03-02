import 'package:flutter/material.dart';
import 'package:demo_run/model/news.dart';
import '../model/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'article_view.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({Key? key}) : super(key: key);

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loading ? const CircularProgressIndicator():
    Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
        child:
              ListView.builder(
                padding: const EdgeInsets.all(5.0),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: BlogTile(
                          imageUrl: articles[index].urlToImage.toString(),
                          title: articles[index].title,
                          desc: articles[index].description,
                        url: articles[index].url.toString(),
                      ),
                    );
                  }
              ),
      );
  }
}

class BlogTile extends StatelessWidget{
  final String imageUrl, title, desc, url;
  const BlogTile({super.key, required this.imageUrl, required this.title, required this.desc, required this.url});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                    imageUrl: imageUrl,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              desc,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ArticleView(
                      BlogUrl: url
                    ))
                );
              },

              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  color: Colors.blue
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Read More'),
                  ),
              )
            )
          ],
        ),
      ),
    );
  }
}