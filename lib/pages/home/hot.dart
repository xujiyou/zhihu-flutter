import 'package:flutter/material.dart';
import 'question.dart';
import 'question_page.dart';
import '../global_config.dart';

class Hot extends StatefulWidget{

  @override
  HotState createState() => HotState();
}

class HotState extends State<Hot>{

  Widget hotCard(Question question) {
    return Container(
      decoration: BoxDecoration(
          color: GlobalConfig.cardBackgroundColor,
          border: BorderDirectional(
              bottom: BorderSide(
                  color: GlobalConfig.dark == true
                      ? Colors.white12
                      : Colors.black12,
                  width: 1.0)
          )
      ),
      child: FlatButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
              return QuestionPage();
                }
            ));
          },
          child: Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            question.order,
                              style: TextStyle(
                                color: question.order.compareTo("03") <= 0 ? Colors.red : Colors.yellow,
                                fontSize: 18.0
                            )
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        question.rise != null ?
                        Row(
                          children: <Widget>[
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.red,
                                    size: 10.0,
                                  ),
                                  Text(
                                    question.rise,
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 10.0),
                                  )
                          ],
                              )
                            : Container()
                      ],
                    )
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            question.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                height: 1.1,
                                color: GlobalConfig.dark == true
                                    ? Colors.white70
                                    : Colors.black),
                          ),
                          padding: const EdgeInsets.only(bottom: 10.0,right: 4.0),
                          alignment: Alignment.topLeft,
                        ),
                        question.mark != null ?
                          Container(
                                child: Text(question.mark,
                                    style: TextStyle(
                                        color: GlobalConfig.fontColor)),
                            alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(bottom: 8.0,right: 4.0)
                          )
                            : Container(),
                        Container(
                          child: Text(question.hotNum,
                              style: TextStyle(color: GlobalConfig.fontColor)),
                          alignment: Alignment.topLeft,
                        )
                      ],
                    )
                ),
                Expanded(
                    flex: 3,
                    child: AspectRatio(
                        aspectRatio: 3.0 / 2.0,
                        child: Container(
                          foregroundDecoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(question.imgUrl),
                                centerSlice:
                                    Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                              ),
                              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                          ),
                        )
                    )
                )
              ],
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
        margin: const EdgeInsets.only(top: 5.0),
      child: Column(
          children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 5.0),
            ),
            hotCard(questionList[0]),
            hotCard(questionList[1]),
            hotCard(questionList[2]),
            hotCard(questionList[3]),
            hotCard(questionList[4]),
          ],
        ),
      )
    );
  }
}