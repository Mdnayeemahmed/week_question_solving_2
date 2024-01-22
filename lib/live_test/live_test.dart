import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return NewsArticleCard(article: articles[index]);
            },
          )
              : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return NewsArticleCard(article: articles[index]);
            },
          );
        },
      ),
    );
  }
}

class NewsArticle {
  final String title;
  final String imageUrl;

  NewsArticle({required this.title, required this.imageUrl});
}

List<NewsArticle> articles = [
  NewsArticle(
    title: 'News Feed 1',
    imageUrl: 'https://assets.weforum.org/editor/fzPGn7M4HBWze-A9K5-Mg5briEG6R9ZWWlA-VmZcaqE.jpg',
  ),
  NewsArticle(
    title: 'News Feed 2',
    imageUrl: 'https://d25yuvogekh0nj.cloudfront.net/2019/07/Website-News-Feed-Creator-blog-banner-1250x500.png',
  ),
  NewsArticle(
    title: 'News Feed 3',
    imageUrl: 'https://assets.weforum.org/editor/fzPGn7M4HBWze-A9K5-Mg5briEG6R9ZWWlA-VmZcaqE.jpg',
  ),
  NewsArticle(
    title: 'News Feed 4',
    imageUrl: 'https://d25yuvogekh0nj.cloudfront.net/2019/07/Website-News-Feed-Creator-blog-banner-1250x500.png',
  ),
  // Add more articles as needed
];

class NewsArticleCard extends StatelessWidget {
  final NewsArticle article;

  NewsArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(article.title),
        subtitle: Image.network(article.imageUrl, height: 150, width: 150),
      ),
    );
  }
}


















