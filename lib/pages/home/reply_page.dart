import 'package:flutter/material.dart';
import '../global_config.dart';
import 'question_page.dart';
import '../global_config.dart';

class Common {
  static Widget searchInput(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: FlatButton.icon(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: Text(""),
            ),
            width: 60.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                  hintText: "搜索比乎内容",
                  hintStyle: TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          ),
          Container(
            child: IconButton(
                icon: Icon(Icons.share, color: GlobalConfig.fontColor),
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                iconSize: 18.0),
          ),
          Container(
            child: IconButton(
                icon: Icon(Icons.list, color: GlobalConfig.fontColor),
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                iconSize: 18.0),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      height: 36.0,
      //padding: EdgeInsets.only(top:8.0, bottom: 8.0, left: 8.0, right: 8.0),
    );
  }
}

class ReplyPage extends StatefulWidget {

  @override
  ReplyPageState createState() => ReplyPageState();
}

class ReplyPageState extends State<ReplyPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
          appBar: AppBar(
              title: Common.searchInput(context)
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: FlatButton(
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                          builder: (context) {
                        return QuestionPage();
                          }
                      ));
                    },
                    child: Container(
                      child: Text("你认为《三体》中最牛的文明是？",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              height: 1.3,
                              color: GlobalConfig.dark == true
                                  ? Colors.white70
                                  : Colors.black)),
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                    ),
                    color: GlobalConfig.cardBackgroundColor,
                  ),
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.white10))
                  ),
                ),
                Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: FlatButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.brush),
                              label: Text("写回答"),
                              textTheme: ButtonTextTheme.accent,
                            ),
                            decoration: BoxDecoration(
                                border: BorderDirectional(
                                    end: BorderSide(color: Colors.white10))
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: FlatButton(
                              onPressed: (){
                                Navigator.of(context)
                                    .push(MaterialPageRoute(
                                    builder: (context) {
                                  return QuestionPage();
                                    }
                                ));
                              },
                              child: Text("查看全部10000个回答 > "),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: GlobalConfig.cardBackgroundColor,
                    ),
                    margin: EdgeInsets.only(bottom: 10.0)
                ),
                Container(
                  child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"),
                          radius: 20.0
                      ),
                      title: Text("Flutter"),
                      subtitle: Text("人生如逆旅，我亦是行人"),
                      trailing: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Colors.white),
                        label: Text(
                          "关注",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                      )
                  ),
                  decoration: BoxDecoration(
                      color: GlobalConfig.cardBackgroundColor,
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.white10))
                  ),
                ),
                Container(
                  child: Text(
                      "回归运动\n\n三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀",
                      style: TextStyle(
                          height: 1.4,
                          fontSize: 16.0,
                          color: GlobalConfig.fontColor),
                      textAlign: TextAlign.start
                  ),
                  margin: const EdgeInsets.all(16.0),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 50.0,
            child: Row(
                  children: <Widget>[
                Container(
                  child: FlatButton.icon(
                    onPressed: () {},
                    label: Text("赞同 10 K"),
                    color: GlobalConfig.searchBackgroundColor,
                    icon: Icon(Icons.arrow_drop_up),
                  ),
                  margin: EdgeInsets.only(left: 16.0),
                      height: 30.0,
                    ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                      padding: const EdgeInsets.all(0.0)),
                  margin: EdgeInsets.only(left: 8.0),
                      height: 30.0,
                  decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
                        color: GlobalConfig.searchBackgroundColor,
                      ),
                    ),
                Expanded(
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                    IconButton(
                                onPressed: (){ print("icon");},
                        icon: Container(
                          child: Column(
                                    children: <Widget>[
                              Icon(
                                Icons.favorite,
                                size: 18.0,
                                color: GlobalConfig.fontColor,
                              ),
                              Text(
                                "感谢",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: GlobalConfig.fontColor),
                              )
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(),
                                  height: 30.0,
                                )
                            ),
                    IconButton(
                                onPressed: (){ print("icon");},
                        icon: Container(
                          child: Column(
                                    children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 18.0,
                                color: GlobalConfig.fontColor,
                              ),
                              Text(
                                "收藏",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: GlobalConfig.fontColor),
                              )
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(),
                                  height: 30.0,
                                )
                            ),
                    IconButton(
                                onPressed: (){ print("icon");},
                        icon: Container(
                          child: Column(
                                    children: <Widget>[
                              Icon(
                                Icons.mode_comment,
                                size: 18.0,
                                color: GlobalConfig.fontColor,
                              ),
                              Text(
                                "345",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: GlobalConfig.fontColor),
                              )
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(),
                                  height: 30.0,
                                )
                            ),
                          ],
                        )
                    )
                  ],
                ),
                color: GlobalConfig.cardBackgroundColor,
              )
          ),
        )
    );
  }

}