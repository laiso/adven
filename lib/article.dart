import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Article {
  final String url;
  final String title;

  Article(this.url, this.title);
}

class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({Key key, @required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: article.url,
      appBar: new AppBar(
        title: Text(article.title),
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Loading.....'),
        ),
      ),
    );
  }
}
