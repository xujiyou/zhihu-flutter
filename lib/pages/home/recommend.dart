import 'package:flutter/material.dart';
import 'package:zhihu/model/global_config.dart';
import 'article.dart';
import 'reply_page.dart';

class Recommend extends StatefulWidget {

  @override
  RecommendState createState() => RecommendState();

}

class RecommendState extends State<Recommend> {

  Widget commonCard(Article article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = Text(
        article.user + " :  " + article.mark,
          style: TextStyle(height: 1.3, color: GlobalConfig.fontColor)
      );
    } else {
      markWidget = Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                article.user + " :  " + article.mark,
                  style: TextStyle(height: 1.3, color: GlobalConfig.fontColor)
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(article.imgUrl),
                          centerSlice:
                              Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                        ),
                        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                    ),
                  )
              )
          ),
        ],
      );
    }
    return Container(
        color: GlobalConfig.cardBackgroundColor,
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
              return ReplyPage();
                }
            ));
          },
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                      article.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          height: 1.3,
                          color: GlobalConfig.dark == true
                              ? Colors.white70
                              : Colors.black)
                  ),
                  margin: EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft
              ),
              Container(
                  child: markWidget,
                  margin: EdgeInsets.only(top: 6.0, bottom: 14.0),
                  alignment: Alignment.topLeft
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                            article.agreeNum.toString() +
                                " 赞同 · " +
                                article.commentNum.toString() +
                                "评论",
                            style: TextStyle(color: GlobalConfig.fontColor))
                    ),
                    Icon(Icons.linear_scale, color: GlobalConfig.fontColor)
                  ],
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
        margin: const EdgeInsets.only(top: 5.0),
      child: Column(
          children: <Widget>[
            commonCard(articleList[0]),
            commonCard(articleList[1]),
          ],
        ),
      )
    );
  }

}