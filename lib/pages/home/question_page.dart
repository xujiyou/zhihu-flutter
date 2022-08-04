import 'package:flutter/material.dart';
import '../global_config.dart';
import 'reply_page.dart';
import '../global_config.dart';

class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() => QuestionPageState();

}

class QuestionPageState extends State<QuestionPage> {

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
                    child: Row(
                  children: <Widget>[
                        Container(
                            child: FlatButton(
                                onPressed: () {},
                                child: Text("物理学"),
                                color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                      margin: const EdgeInsets.only(right: 8.0)
                    ),
                        Container(
                            child: FlatButton(
                                onPressed: () {},
                                child: Text("三体(书籍)"),
                                color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                        margin: const EdgeInsets.only(right: 8.0)
                    ),
                        Container(
                          child: FlatButton(
                              onPressed: () {},
                              child: Text("脑洞(网络用语)"),
                              color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                    )
                  ],
                ),
                    padding: EdgeInsets.only(
                        left: 16.0, top: 8.0, bottom: 8.0, right: 16.0),
                color: GlobalConfig.cardBackgroundColor,
              ),
                  Container(
                      child: Text("《三体》里的水滴有可能被制造出来吗?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              height: 1.3,
                              color: GlobalConfig.dark == true
                                  ? Colors.white70
                                  : Colors.black)),
                      padding:
                          EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                alignment: Alignment.topLeft,
                color: GlobalConfig.cardBackgroundColor
              ),
                  Container(
                    child: Text(
                    "如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？",
                        style: TextStyle(
                            height: 1.4,
                            fontSize: 16.0,
                            color: GlobalConfig.fontColor),
                        textAlign: TextAlign.start
                ),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12)),
                  color: GlobalConfig.cardBackgroundColor
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
                              icon: Icon(Icons.group_add),
                              label: Text("邀请回答"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                            decoration: BoxDecoration(
                                border: BorderDirectional(
                                    end: BorderSide(
                                        color: GlobalConfig.dark == true
                                            ? Colors.white12
                                            : Colors.black12))
                          ),
                        ),
                      ),
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
                                    end: BorderSide(
                                        color: GlobalConfig.dark == true
                                            ? Colors.white12
                                            : Colors.black12))
                          ),
                        ),
                      ),
                    ],
                  ),
                    decoration:
                        BoxDecoration(
                    color: GlobalConfig.cardBackgroundColor
                  ),
              ),
                  Container(
                margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: Row(
                  children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text("173个回答",
                                style:
                                    TextStyle(color: GlobalConfig.fontColor)),
                        margin: const EdgeInsets.only(left: 16.0),
                      ),
                    ),
                        Expanded(
                          child: Container(
                            child: PopupMenuButton(
                          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                                PopupMenuItem<String>(
                              value: '质量',
                                    child: Container(
                                      child: Row(
                                  children: <Widget>[
                                          Text('按质量排序'),
                                          Icon(
                                            Icons.check,
                                            color: Colors.blue,
                                          )
                                  ],
                                ),
                              )
                            ),
                                PopupMenuItem<String>(
                              value: '时间',
                              child: Text('按时间排序')
                            )
                          ],
                              child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                    Text("按质量排序",
                                        style: TextStyle(
                                            color: GlobalConfig.fontColor)),
                                    Icon(Icons.keyboard_arrow_down,
                                        color: GlobalConfig.fontColor)
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
                  Container(
                color: GlobalConfig.cardBackgroundColor,
                margin: const EdgeInsets.only(bottom: 5.0),
                      child: FlatButton(
                  onPressed: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(
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
                                        backgroundImage: NetworkImage(
                                            "https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"),
                                  radius: 11.0
                              ),
                            ),
                                  Text(" 游牧由",
                                      style: TextStyle(
                                          color: GlobalConfig.fontColor))
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                            Container(
                                child: Text(
                              "第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...",
                                    style: TextStyle(
                                        height: 1.3,
                                        color: GlobalConfig.fontColor)
                          ),
                                margin: EdgeInsets.only(top: 6.0, bottom: 14.0),
                          alignment: Alignment.topLeft
                      ),
                            Container(
                              child: Row(
                          children: <Widget>[
                                  Expanded(
                                      child: Text("1K 赞同 · 262 评论 · 10 天前",
                                          style: TextStyle(
                                              color: GlobalConfig.fontColor))
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