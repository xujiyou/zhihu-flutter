import 'package:flutter/material.dart';
import '../global_config.dart';
import 'reply_page.dart';
import '../global_config.dart';

class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() => new QuestionPageState();

}

class QuestionPageState extends State<QuestionPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: new AppBar(
            title: Common.searchInput(context)
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("物理学"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                      margin: const EdgeInsets.only(right: 8.0)
                    ),
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("三体(书籍)"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                        margin: const EdgeInsets.only(right: 8.0)
                    ),
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("脑洞(网络用语)"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                    )
                  ],
                ),
                padding: new EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0, right: 16.0),
                color: GlobalConfig.cardBackgroundColor,
              ),
              new Container(
                child: new Text("《三体》里的水滴有可能被制造出来吗?", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: GlobalConfig.dark == true ? Colors.white70 : Colors.black)),
                padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                alignment: Alignment.topLeft,
                color: GlobalConfig.cardBackgroundColor
              ),
              new Container(
                child: new Text(
                    "如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？",
                    style: new TextStyle(height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor), textAlign: TextAlign.start
                ),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                decoration: new BoxDecoration(
                  border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12)),
                  color: GlobalConfig.cardBackgroundColor
                ),
              ),
              new Container(
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new FlatButton.icon(
                            onPressed: (){},
                            icon: new Icon(Icons.group_add),
                            label: new Text("邀请回答"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new FlatButton.icon(
                            onPressed: (){},
                            icon: new Icon(Icons.brush),
                            label: new Text("写回答"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: new BoxDecoration(
                    color: GlobalConfig.cardBackgroundColor
                  ),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        child: new Text("173个回答", style: new TextStyle(color: GlobalConfig.fontColor)),
                        margin: const EdgeInsets.only(left: 16.0),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        child: new PopupMenuButton(
                          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                            new PopupMenuItem<String>(
                              value: '质量',
                              child: new Container(
                                child: new Row(
                                  children: <Widget>[
                                    new Text('按质量排序'),
                                    new Icon(Icons.check, color: Colors.blue,)
                                  ],
                                ),
                              )
                            ),
                            new PopupMenuItem<String>(
                              value: '时间',
                              child: new Text('按时间排序')
                            )
                          ],
                          child: new Container(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Text("按质量排序", style: new TextStyle(color: GlobalConfig.fontColor)),
                                new Icon(Icons.keyboard_arrow_down, color: GlobalConfig.fontColor)
                              ],
                            ),
                          ),
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: GlobalConfig.cardBackgroundColor,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: new FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          return new ReplyPage();
                        }
                    ));
                  },
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              child: new CircleAvatar(
                                  backgroundImage: new NetworkImage("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"),
                                  radius: 11.0
                              ),
                            ),
                            new Text(" 游牧由", style: new TextStyle(color: GlobalConfig.fontColor))
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      new Container(
                          child: new Text(
                              "第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...",
                              style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor)
                          ),
                          margin: new EdgeInsets.only(top: 6.0, bottom: 14.0),
                          alignment: Alignment.topLeft
                      ),
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Text("1K 赞同 · 262 评论 · 10 天前", style: new TextStyle(color: GlobalConfig.fontColor))
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        )
      )
    );
  }

}