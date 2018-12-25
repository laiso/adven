import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:adven/article.dart';

class ArticlesList extends StatefulWidget {
  ArticlesList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ArticlesListState createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key('$index'),
                    onDismissed: (direction) => {},
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              items[index]["iconUrl"])),
                      title: Text(
                        items[index]["title"],
                      ),
                      subtitle: Text(
                        items[index]["name"],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ArticlePage(article: Article(items[index]["url"].toString(), items[index]["title"].toString())),
                        ));
                      },
                    ),
                    background: Container(color: Colors.white),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const items = [
  {
    "title": "JS ? ReactNative × Redux ? ダサいよ... Flutter × Reduxにしましょう...",
    "url": "https://qiita.com/clay4649/items/0c36bb400a7af0b8e2d6",
    "name": "clay4649",
    "iconUrl":
    "https://pbs.twimg.com/profile_images/1046771581572116483/cKQPkRyH_bigger.jpg",
    "date": "1"
  },
  {
    "title": "Flutterをできるようになるためにやったことまとめ ",
    "url": "https://www.shogogeek.com/entry/20181202/1543703400",
    "name": "superman9387",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/139360/profile-images/1514255586",
    "date": "2"
  },
  {
    "title": "Padding（またはMargin）だけが目的でContainerを使うのは間違ってる（というか分かりづらい） ",
    "url": "https://note.mu/nbht/n/n768920a8eb1c",
    "name": "nobuhito",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/15745/profile-images/1473681672",
    "date": "3"
  },
  {
    "title": "Flutter製アプリ「GroupAlbum」で使ってるプラグイン全部晒します！！！！ ",
    "url": "https://www.shogogeek.com/entry/20181204/1543876200",
    "name": "superman9387",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/139360/profile-images/1514255586",
    "date": "4"
  },
  {
    "title": "Flutterの好きなところを語る ",
    "url": "https://www.shogogeek.com/entry/20181205/1543960800",
    "name": "superman9387",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/139360/profile-images/1514255586",
    "date": "5"
  },
  {
    "title": "Google公式Flutter用Google Mapsプラグインを一通り使ってみた",
    "url": "https://qiita.com/aoinakanishi/items/25f2526fc7c1fe8350c6",
    "name": "aoinakanishi",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/129712/profile-images/1525792972",
    "date": "6"
  },
  {
    "title": "flutter_blueで両OS対応のSDKを書いてみる",
    "url": "https://qiita.com/chigichan24/items/89cb686e880f0274ed1c",
    "name": "chigichan24",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/176701/profile-images/1528617309",
    "date": "7"
  },
  {
    "title": "codemagicでFirebaseと連携したFlutterアプリをデプロイしてみる",
    "url": "https://qiita.com/shimopata/items/f158015d2893e2614c49",
    "name": "shimopata",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/122004/profile-images/1517671348",
    "date": "8"
  },
  {
    "title": "flutterとFirebase Cloud Messagingを連携させて通知専用アプリをサクッとつくる ",
    "url": "https://blog.pco2699.net/entry/2018/12/09/203408",
    "name": "pco2699",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/125528/profile-images/1544341112",
    "date": "9"
  },
  {
    "title": "Flutterの最後の秘宝、Platform Viewの実装を調べに行く",
    "url": "https://qiita.com/kikuchy/items/397b7664ad32656748bf",
    "name": "kikuchy",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/41896/profile-images/1473688961",
    "date": "10"
  },
  {
    "title": "Google公式Flutter用WebViewプラグインを一通り使ってみた",
    "url": "https://qiita.com/aoinakanishi/items/e58e7dd537ca1d1b76d6",
    "name": "aoinakanishi",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/129712/profile-images/1525792972",
    "date": "11"
  },
  {
    "title": "ネイティブpluginの作り方? ",
    "url":
    "https://azihsoyn.hatenablog.com/entry/flutter-advent-calendar-2018-day12",
    "name": "azihsoyn",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/14577/profile-images/1477545988",
    "date": "12"
  },
  {
    "title": "Flutter 1.0がリリースされたので概要から、環境構築、実装方法、アーキテクチャ、情報収集方法まで全部書く",
    "url": "https://qiita.com/superman9387/items/a605b6b5690aaa746376",
    "name": "superman9387",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/139360/profile-images/1514255586",
    "date": "13"
  },
  {
    "title": "flutterを１からインストール",
    "url": "https://qiita.com/benridane/items/3263ed9d1f4d1cfb9a4a",
    "name": "benridane",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/104300/profile-images/1473709257",
    "date": "14"
  },
  {
    "title": "Flutter × Flareで無料で簡単にアニメーションを作る",
    "url": "https://qiita.com/aoinakanishi/items/fbcf122ab7cf13f66037",
    "name": "aoinakanishi",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/129712/profile-images/1525792972",
    "date": "15"
  },
  {
    "title": "Flutter製チャットアプリを支える技術",
    "url": "https://qiita.com/kwmt@github/items/2e81b46d62beb091d18b",
    "name": "kwmt@github",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/22161/profile-images/1473683511",
    "date": "16"
  },
  {
    "title": "新世代のクロスプラットフォーム開発を可能とするFlutter1.0のコードに、ドメイン駆動開発の実践を学ぶ。",
    "url": "https://qiita.com/Nimimal/items/87d4faf52fdfb99b0941",
    "name": "Nimimal",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/16455/profile-images/1482447325",
    "date": "17"
  },
  {
    "title": "",
    "name": "kts0226",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/122822/profile-images/1473715359",
    "date": "18"
  },
  {
    "title": "[Flutter] DartのclassとFirestoreデータを相互変換、そしてCRUDへ",
    "url": "https://qiita.com/sekitaka_1214/items/129f41c2fbb1dc05b5c3",
    "name": "sekitaka_1214",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/18273/profile-images/1480982459",
    "date": "19"
  },
  {
    "title": "【Flutter】JSONをデコードする",
    "url": "https://qiita.com/rkowase/items/f397513f2149a41b6dd2",
    "name": "rkowase",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/123122/profile-images/1474288386",
    "date": "20"
  },
  {
    "title": "既存のアプリからFlutterを呼び出す",
    "url": "https://qiita.com/t-kashima/items/f825f7b91b850a3563a9",
    "name": "t-kashima",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/9950/profile-images/1473681599",
    "date": "21"
  },
  {
    "title": "Flutterで1年間開発して利用した使えるライブラリ",
    "url": "https://qiita.com/ko2ic/items/2a0aa4301011f8f52275",
    "name": "ko2ic",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/10494/profile-images/1473681724",
    "date": "22"
  },
  {
    "title": "",
    "name": "nabeen",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/44007/profile-images/1537528298",
    "date": "23"
  },
  {
    "title": "BLoCパターンの問題点とScoped Modelとの比較",
    "url": "https://qiita.com/kabochapo/items/2b992cc00e9f464c1ea9",
    "name": "kabochapo",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/132102/profile-images/1544421088",
    "date": "24"
  },
  {
    "title":
    "FlutterのBLoC(Business Logic Component)のライフサイクルを正確に管理して提供するProviderパッケージの解説 ",
    "url": "https://medium.com/flutter-jp/bloc-provider-70e869b11b2f",
    "name": "mono0926",
    "iconUrl":
    "https://qiita-image-store.s3.amazonaws.com/0/19398/profile-images/1473682701",
    "date": "25"
  }
];