import 'package:flutter/material.dart';
import 'article.dart';
import 'reply_page.dart';
import '../global_config.dart';

class Follow extends StatefulWidget {

  @override
  _FollowState createState() => _FollowState();

}

class _FollowState extends State<Follow> {

  Widget wordsCard(Article article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = Text(
        article.mark,
          style: TextStyle(height: 1.3, color: GlobalConfig.fontColor)
      );
    } else {
      markWidget = Row(
        children: <Widget>[
          Expanded(
              flex: 2,
            child: Container(
              child: Text(
                    article.mark,
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
                child: Row(
                children: <Widget>[
                    Container(
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(article.headUrl),
                        radius: 11.0
                    ),
                  ),
                    Text(
                        "  " +
                            article.user +
                            " " +
                            article.action +
                            " · " +
                            article.time,
                        style: TextStyle(color: GlobalConfig.fontColor))
                ],
              ),
              padding: const EdgeInsets.only(top: 10.0),
            ),
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
                  margin: EdgeInsets.only(top: 6.0),
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
                    PopupMenuButton(
                        icon: Icon(
                          Icons.linear_scale,
                          color: GlobalConfig.fontColor,
                        ),
                    itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                              PopupMenuItem<String>(
                          value: '选项一的值',
                          child: Text('屏蔽这个问题')
                      ),
                              PopupMenuItem<String>(
                          value: '选项二的值',
                          child: Text('取消关注 learner')
                      ),
                              PopupMenuItem<String>(
                          value: '选项二的值',
                          child: Text("举报")
                      )
                    ]
                  )
                ],
              ),
              padding: const EdgeInsets.only(),
            )
          ],
        ),
        )
    );
  }

  Widget billboard() {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      color: GlobalConfig.cardBackgroundColor,
        child: FlatButton(
        onPressed: (){},
          child: Column(
          children: <Widget>[
              Container(
                child: Row(
                children: <Widget>[
                    Container(
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"),
                        radius: 11.0
                    ),
                  ),
                    Text("  对啊网",
                        style: TextStyle(color: GlobalConfig.fontColor))
                ],
              ),
              padding: const EdgeInsets.only(top: 10.0),
            ),
              Container(
                  child: Text(
                    "考过CPA，非名牌大学也能进名企",
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
                  child: AspectRatio(
                    aspectRatio: 3.0 / 1.0,
                      child: Container(
                        foregroundDecoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg"),
                              centerSlice:
                                  Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                          ),
                          borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                      ),
                    )
                ),
                  margin: EdgeInsets.only(top: 6.0, bottom: 14.0),
                alignment: Alignment.topLeft
            ),
              Container(
                  child: Text(
                    "还在羡慕别人的好工作？免费领取价值1980元的注册会计师课程，为自己充电！",
                      style: TextStyle(
                          height: 1.3, color: GlobalConfig.fontColor)
                ),
                padding: const EdgeInsets.only(bottom: 8.0)
            ),

              Container(
                child: Row(
                children: <Widget>[
                    Container(
                        child: Text("广告",
                            style: TextStyle(
                                fontSize: 10.0, color: GlobalConfig.fontColor)),
                        decoration: BoxDecoration(
                          border: Border.all(color: GlobalConfig.fontColor),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(2.0)),
                      ),
                      padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 3.0, right: 3.0)
                  ),
                    Expanded(
                        child: Text("  查看详情",
                            style: TextStyle(color: GlobalConfig.fontColor))
                  ),
                    Icon(Icons.clear, color: GlobalConfig.fontColor)
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
            wordsCard(articleList[0]),
            wordsCard(articleList[1]),
            wordsCard(articleList[2]),
            billboard(),
            wordsCard(articleList[3])
          ],
        ),
      )
    );
  }
}