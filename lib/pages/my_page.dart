// import 'package:flutter/material.dart';
// import 'package:zhihu/model/global_config.dart';
// import 'package:zhihu/pages/home/search_page.dart';

// class MyPage extends StatefulWidget {

//   @override
//   _MyPageState createState() => _MyPageState();

// }

// class _MyPageState extends State<MyPage> {

//   Widget barSearch() {
//     return ainer(
//         child: Button(
//           onPressed: (){
//             Navigator.of(context).push(rialPageRoute(
//                 builder: (context) {
//                   return chPage();
//                 }
//             ));
//           },
//           child: 
//             children: <Widget>[
//               ainer(
//                 child: (Icons.search, size: 18.0,),
//                 margin: const EdgeInsets.only(right: 26.0),
//               ),
//               nded(
//                 child: ainer(
//                   child: ("搜索知乎内容"),
//                 )
//               ),
//               ainer(
//                 child: Button(
//                   onPressed: (){},
//                   child: (Icons.settings_overscan, size: 18.0),
//                 ),
//                 width: 40.0,
//               ),
//             ],
//           )
//         ),
//         decoration: ecoration(
//           borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
//           color: GlobalConfig.searchBackgroundColor
//         )
//     );
//   }

//   Widget myInfoCard() {
//     return ainer(
//       color: GlobalConfig.cardBackgroundColor,
//       margin: const EdgeInsets.only(top: 10.0, bottom: 6.0),
//       padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
//       child: mn(
//         children: <Widget>[
//           ainer(
//             margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
//             decoration: ecoration(
//                 color: GlobalConfig.dark == true ? Colors.white10 : r(0xFFF5F5F5),
//                 borderRadius: erRadius.all(Radiircular(6.0))
//             ),
//             child: Button(
//                 onPressed: (){},
//                 child: ainer(
//                   child: Tile(
//                     leading: ainer(
//                       child: leAvatar(
//                           backgroundImage: orkImage("https://pic1.zhimg.com/v2-ec7ed574da66e1b495fcad2cc3d71cb9_xl.jpg"),
//                           radius: 20.0
//                       ),
//                     ),
//                     title: ainer(
//                       margin: const EdgeInsets.only(bottom: 2.0),
//                       child: ("learner"),
//                     ),
//                     subtitle: ainer(
//                       margin: const EdgeInsets.only(top: 2.0),
//                       child: ("查看或编辑个人主页"),
//                     ),
//                   ),
//                 )
//             ),
//           ),
//           ainer(
//             child: 
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ainer(
//                   width: (MediaQuery.of(context).size.width - 6.0) / 4,
//                   child: Button (
//                       onPressed: (){},
//                       child: ainer(
//                         height: 50.0,
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               child: ("57", style: Texte(fontSize: 16.0, color: GlobalConfig.fontColor),),
//                             ),
//                             ainer(
//                               child: ("我的创作", style: Texte(fontSize: 12.0, color: GlobalConfig.fontColor),),
//                             ),
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   height: 14.0,
//                   width: 1.0,
//                   decoration: ecoration(
//                       border: erDirectional(
//                           start: erSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: (MediaQuery.of(context).size.width - 6.0) / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         height: 50.0,
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               child: ("210", style: Texte(fontSize: 16.0, color: GlobalConfig.fontColor),),
//                             ),
//                             ainer(
//                               child: ("关注", style: Texte(fontSize: 12.0, color: GlobalConfig.fontColor),),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   height: 14.0,
//                   width: 1.0,
//                   decoration: ecoration(
//                       border: erDirectional(
//                           start: erSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: (MediaQuery.of(context).size.width - 6.0) / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         height: 50.0,
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               child: ("18", style: Texte(fontSize: 16.0, color: GlobalConfig.fontColor),),
//                             ),
//                             ainer(
//                               child: ("我的收藏", style: Texte(fontSize: 12.0, color: GlobalConfig.fontColor),),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   height: 14.0,
//                   width: 1.0,
//                   decoration: ecoration(
//                       border: erDirectional(
//                           start: erSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
//                       )
//                   ),
//                 ),
//                 ainer(
//                     width: (MediaQuery.of(context).size.width - 6.0) / 4,
//                     child: Button(
//                         onPressed: (){},
//                         child: ainer(
//                           height: 50.0,
//                           child: mn(
//                             children: <Widget>[
//                               ainer(
//                                 child: ("33", style: Texte(fontSize: 16.0, color: GlobalConfig.fontColor),),
//                               ),
//                               ainer(
//                                 child: ("最近浏览", style: Texte(fontSize: 12.0, color: GlobalConfig.fontColor),),
//                               )
//                             ],
//                           ),
//                         )
//                     )
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget myServiceCard() {
//     return ainer(
//       color: GlobalConfig.cardBackgroundColor,
//       margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
//       padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
//       child: mn(
//         children: <Widget>[
//           ainer(
//             child: 
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.book, color: Colors.white),
//                                 backgroundColor: Colors.green,
//                               ),
//                             ),
//                             ainer(
//                               child: ("我的书架", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0),),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.flash_on, color: Colors.white),
//                                 backgroundColor: Colors.blue,
//                               ),
//                             ),
//                             ainer(
//                               child: ("我的 Live", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.free_breakfast, color: Colors.white),
//                                 backgroundColor: r(0xFFA68F52),
//                               ),
//                             ),
//                             ainer(
//                               child: ("私家课", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.attach_money, color: Colors.white),
//                                 backgroundColor: r(0xFF355A9B),
//                               ),
//                             ),
//                             ainer(
//                               child: ("付费咨询", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           ainer(
//             margin: const EdgeInsets.only(top: 16.0),
//             child: 
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.shop, color: Colors.white),
//                                 backgroundColor: r(0xFF088DB4),
//                               ),
//                             ),
//                             ainer(
//                               child: ("已购", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0),),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.radio, color: Colors.white),
//                                 backgroundColor: Colors.blue,
//                               ),
//                             ),
//                             ainer(
//                               child: ("余额礼卷", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//                 ainer(
//                   width: MediaQuery.of(context).size.width / 4,
//                   child: Button(
//                       onPressed: (){},
//                       child: ainer(
//                         child: mn(
//                           children: <Widget>[
//                             ainer(
//                               margin: const EdgeInsets.only(bottom: 6.0),
//                               child: leAvatar(
//                                 radius: 20.0,
//                                 child: (Icons.wifi_tethering, color: Colors.white),
//                                 backgroundColor: r(0xFF029A3F),
//                               ),
//                             ),
//                             ainer(
//                               child: ("服务", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                             )
//                           ],
//                         ),
//                       )
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget settingCard() {
//     return ainer(
//       color: GlobalConfig.cardBackgroundColor,
//       margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
//       padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
//       child: 
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           ainer(
//             width: MediaQuery.of(context).size.width / 4,
//             child: Button(
//                 onPressed: (){},
//                 child: ainer(
//                   child: mn(
//                     children: <Widget>[
//                       ainer(
//                         margin: const EdgeInsets.only(bottom: 6.0),
//                         child: leAvatar(
//                           radius: 20.0,
//                           child: (Icons.invert_colors, color: Colors.white),
//                           backgroundColor: r(0xFFB88800),
//                         ),
//                       ),
//                       ainer(
//                         child: ("社区建设", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                       )
//                     ],
//                   ),
//                 )
//             ),
//           ),
//           ainer(
//             width: MediaQuery.of(context).size.width / 4,
//             child: Button(
//                 onPressed: (){},
//                 child: ainer(
//                   child: mn(
//                     children: <Widget>[
//                       ainer(
//                         margin: const EdgeInsets.only(bottom: 6.0),
//                         child: leAvatar(
//                           radius: 20.0,
//                           child: (Icons.golf_course, color: Colors.white),
//                           backgroundColor: r(0xFF63616D),
//                         ),
//                       ),
//                       ainer(
//                         child: ("反馈", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                       )
//                     ],
//                   ),
//                 )
//             ),
//           ),
//           ainer(
//             width: MediaQuery.of(context).size.width / 4,
//             child: Button(
//                 onPressed: (){
//                   setState((){
//                     if (GlobalConfig.dark == true) {
//                       GlobalConfig.themeData = eData(
//                         primaryColor: Colors.white,
//                         scaffoldBackgroundColor: r(0xFFEBEBEB),
//                       );
//                       GlobalConfig.searchBackgroundColor = r(0xFFEBEBEB);
//                       GlobalConfig.cardBackgroundColor = Colors.white;
//                       GlobalConfig.fontColor = Colors.black54;
//                       GlobalConfig.dark = false;
//                     } else {
//                       GlobalConfig.themeData = eData.dark();
//                       GlobalConfig.searchBackgroundColor = Colors.white10;
//                       GlobalConfig.cardBackgroundColor = r(0xFF222222);
//                       GlobalConfig.fontColor = Colors.white30;
//                       GlobalConfig.dark = true;
//                     }
//                   });
//                 },
//                 child: ainer(
//                   child: mn(
//                     children: <Widget>[
//                       ainer(
//                         margin: const EdgeInsets.only(bottom: 6.0),
//                         child: leAvatar(
//                           radius: 20.0,
//                           child: (GlobalConfig.dark == true ? Icons.wb_sunny : Icons.brightness_2, color: Colors.white),
//                           backgroundColor: r(0xFFB86A0D),
//                         ),
//                       ),
//                       ainer(
//                         child: (GlobalConfig.dark == true ? "日间模式" : "夜间模式", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                       )
//                     ],
//                   ),
//                 )
//             ),
//           ),
//           ainer(
//             width: MediaQuery.of(context).size.width / 4,
//             child: Button(
//                 onPressed: (){},
//                 child: ainer(
//                   child: mn(
//                     children: <Widget>[
//                       ainer(
//                         margin: const EdgeInsets.only(bottom: 6.0),
//                         child: leAvatar(
//                           radius: 20.0,
//                           child: (Icons.perm_data_setting, color: Colors.white),
//                           backgroundColor: r(0xFF636269),
//                         ),
//                       ),
//                       ainer(
//                         child: ("设置", style: Texte(color: GlobalConfig.fontColor, fontSize: 14.0)),
//                       )
//                     ],
//                   ),
//                 )
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget videoCard() {
//     return ainer(
//         color: GlobalConfig.cardBackgroundColor,
//         margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
//         padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
//         child: mn(
//           children: <Widget>[
//             ainer(
//                 margin: const EdgeInsets.only(left: 16.0, bottom: 20.0),
//                 child: 
//                   children: <Widget>[
//                     ainer(
//                       child: leAvatar(
//                         radius: 20.0,
//                         child: (Icons.videocam, color: Colors.white),
//                         backgroundColor: r(0xFFB36905),
//                       ),
//                     ),
//                     nded(
//                       child: ainer(
//                         margin: const EdgeInsets.only(left: 8.0),
//                         child: ("视频创作", style: Texte(fontSize: 18.0),),
//                       ),
//                     ),
//                     ainer(
//                       child: Button(
//                           onPressed: (){},
//                           child: ("拍一个", style: Texte(color: Colors.blue),)
//                       ),
//                     )
//                   ],
//                 )
//             ),
//             ainer(
//               margin: const EdgeInsets.only(left: 16.0),
//               child: leChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: 
//                   children: <Widget>[
//                     ainer(
//                         width: MediaQuery.of(context).size.width / 2.5,
//                         margin: const EdgeInsets.only(right: 6.0),
//                         child: ctRatio(
//                             aspectRatio: 4.0 / 2.0,
//                             child: ainer(
//                               foregroundDecoration:ecoration(
//                                   image: rationImage(
//                                     image: orkImage("https://pic2.zhimg.com/50/v2-5942a51e6b834f10074f8d50be5bbd4d_400x224.jpg"),
//                                     centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                   ),
//                                   borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                               ),
//                             )
//                         )
//                     ),
//                     ainer(
//                         margin: const EdgeInsets.only(right: 6.0),
//                         width: MediaQuery.of(context).size.width / 2.5,
//                         child: ctRatio(
//                             aspectRatio: 4.0 / 2.0,
//                             child: ainer(
//                               foregroundDecoration:ecoration(
//                                   image: rationImage(
//                                     image: orkImage("https://pic3.zhimg.com/50/v2-7fc9a1572c6fc72a3dea0b73a9be36e7_400x224.jpg"),
//                                     centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                   ),
//                                   borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                               ),
//                             )
//                         )
//                     ),
//                     ainer(
//                         margin: const EdgeInsets.only(right: 6.0),
//                         width: MediaQuery.of(context).size.width / 2.5,
//                         child: ctRatio(
//                             aspectRatio: 4.0 / 2.0,
//                             child: ainer(
//                               foregroundDecoration:ecoration(
//                                   image: rationImage(
//                                     image: orkImage("https://pic4.zhimg.com/50/v2-898f43a488b606061c877ac2a471e221_400x224.jpg"),
//                                     centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                   ),
//                                   borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                               ),
//                             )
//                         )
//                     ),
//                     ainer(
//                       width: MediaQuery.of(context).size.width / 2.5,
//                       child: ctRatio(
//                         aspectRatio: 4.0 / 2.0,
//                         child: ainer(
//                           foregroundDecoration:ecoration(
//                               image: rationImage(
//                                 image: orkImage("https://pic1.zhimg.com/50/v2-0008057d1ad2bd813aea4fc247959e63_400x224.jpg"),
//                                 centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                               ),
//                               borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                           ),
//                         )
//                       )
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//     );
//   }

//   Widget ideaCard() {
//     return ainer(
//         color: GlobalConfig.cardBackgroundColor,
//         margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
//         padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
//         child: mn(
//           children: <Widget>[
//             ainer(
//                 margin: const EdgeInsets.only(left: 16.0, bottom: 20.0),
//                 child: 
//                   children: <Widget>[
//                     ainer(
//                       child: leAvatar(
//                         radius: 20.0,
//                         child: (Icons.all_inclusive, color: Colors.white),
//                         backgroundColor: Colors.blue,
//                       ),
//                     ),
//                     nded(
//                       child: ainer(
//                         margin: const EdgeInsets.only(left: 8.0),
//                         child: ("想法", style: Texte(fontSize: 18.0),),
//                       ),
//                     ),
//                     ainer(
//                       child: Button(
//                           onPressed: (){},
//                           child: ("去往想法首页", style: Texte(color: Colors.blue),)
//                       ),
//                     )
//                   ],
//                 )
//             ),
//             ainer(
//               margin: const EdgeInsets.only(left: 16.0),
//               child: leChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: 
//                   children: <Widget>[
//                     ainer(
//                       margin: const EdgeInsets.only(right: 6.0),
//                       decoration: ecoration(
//                         color: GlobalConfig.searchBackgroundColor,
//                         borderRadius: erRadius.all(Radiircular(6.0))
//                       ),
//                       child: 
//                         children: <Widget>[
//                           ainer(
//                             padding: const EdgeInsets.only(left: 10.0),
//                             child: mn(
//                               children: <Widget>[
//                                 n(
//                                   alignment: Alignment.centerLeft,
//                                   child: ainer(
//                                     child: ("苹果 WWDC 2018 正在举行", style: Texte(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
//                                   ),
//                                 ),
//                                 n(
//                                   alignment: Alignment.centerLeft,
//                                   child: ainer(
//                                     margin: const EdgeInsets.only(top: 6.0),
//                                     child: ("软件更新意料之中，硬件之谜...", style: Texte(color: GlobalConfig.fontColor),),
//                                   )
//                                 )

//                               ],
//                             ),
//                           ),
//                           ainer(
//                             margin: const EdgeInsets.all(10.0),
//                             width: MediaQuery.of(context).size.width / 5,
//                             child: ctRatio(
//                               aspectRatio: 1.0 / 1.0,
//                               child: ainer(
//                                 foregroundDecoration:ecoration(
//                                     image: rationImage(
//                                       image: orkImage("https://pic2.zhimg.com/50/v2-55039fa535f3fe06365c0fcdaa9e3847_400x224.jpg"),
//                                       centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                     ),
//                                     borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                                 ),
//                               )
//                             )
//                           )
//                         ],
//                       )
//                     ),
//                     ainer(
//                         margin: const EdgeInsets.only(right: 6.0),
//                         decoration: ecoration(
//                             color: GlobalConfig.searchBackgroundColor,
//                             borderRadius: erRadius.all(Radiircular(6.0))
//                         ),
//                         child: 
//                           children: <Widget>[
//                             ainer(
//                               padding: const EdgeInsets.only(left: 10.0),
//                               child: mn(
//                                 children: <Widget>[
//                                   n(
//                                     alignment: Alignment.centerLeft,
//                                     child: ainer(
//                                       child: ("此刻你的桌子是什么样子？", style: Texte(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
//                                     ),
//                                   ),
//                                   n(
//                                       alignment: Alignment.centerLeft,
//                                       child: ainer(
//                                         margin: const EdgeInsets.only(top: 6.0),
//                                         child: ("晒一晒你的书桌/办公桌", style: Texte(color: GlobalConfig.fontColor),),
//                                       )
//                                   )

//                                 ],
//                               ),
//                             ),
//                             ainer(
//                                 margin: const EdgeInsets.all(10.0),
//                                 width: MediaQuery.of(context).size.width / 5,
//                                 child: ctRatio(
//                                     aspectRatio: 1.0 / 1.0,
//                                     child: ainer(
//                                       foregroundDecoration:ecoration(
//                                           image: rationImage(
//                                             image: orkImage("https://pic3.zhimg.com/v2-b4551f702970ff37709cdd7fd884de5e_294x245|adx4.png"),
//                                             centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                           ),
//                                           borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                                       ),
//                                     )
//                                 )
//                             )
//                           ],
//                         )
//                     ),
//                     ainer(
//                         margin: const EdgeInsets.only(right: 6.0),
//                         decoration: ecoration(
//                             color: GlobalConfig.searchBackgroundColor,
//                             borderRadius: erRadius.all(Radiircular(6.0))
//                         ),
//                         child: 
//                           children: <Widget>[
//                             ainer(
//                               padding: const EdgeInsets.only(left: 10.0),
//                               child: mn(
//                                 children: <Widget>[
//                                   n(
//                                     alignment: Alignment.centerLeft,
//                                     child: ainer(
//                                       child: ("关于高考你印象最深的是...", style: Texte(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
//                                     ),
//                                   ),
//                                   n(
//                                       alignment: Alignment.centerLeft,
//                                       child: ainer(
//                                         margin: const EdgeInsets.only(top: 6.0),
//                                         child: ("聊聊你的高三生活", style: Texte(color: GlobalConfig.fontColor),),
//                                       )
//                                   )

//                                 ],
//                               ),
//                             ),
//                             ainer(
//                                 margin: const EdgeInsets.all(10.0),
//                                 width: MediaQuery.of(context).size.width / 5,
//                                 child: ctRatio(
//                                     aspectRatio: 1.0 / 1.0,
//                                     child: ainer(
//                                       foregroundDecoration:ecoration(
//                                           image: rationImage(
//                                             image: orkImage("https://pic2.zhimg.com/50/v2-ce2e01a047e4aba9bfabf8469cfd3e75_400x224.jpg"),
//                                             centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                           ),
//                                           borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                                       ),
//                                     )
//                                 )
//                             )
//                           ],
//                         )
//                     ),
//                     ainer(
//                         margin: const EdgeInsets.only(right: 6.0),
//                         decoration: ecoration(
//                             color: GlobalConfig.searchBackgroundColor,
//                             borderRadius: erRadius.all(Radiircular(6.0))
//                         ),
//                         child: 
//                           children: <Widget>[
//                             ainer(
//                               padding: const EdgeInsets.only(left: 10.0),
//                               child: mn(
//                                 children: <Widget>[
//                                   n(
//                                     alignment: Alignment.centerLeft,
//                                     child: ainer(
//                                       child: ("夏天一定要吃的食物有哪些", style: Texte(color: GlobalConfig.dark == true? Colors.white70 : Colors.black, fontSize: 16.0),),
//                                     ),
//                                   ),
//                                   n(
//                                       alignment: Alignment.centerLeft,
//                                       child: ainer(
//                                         margin: const EdgeInsets.only(top: 6.0),
//                                         child: ("最适合夏天吃的那种", style: Texte(color: GlobalConfig.fontColor),),
//                                       )
//                                   )

//                                 ],
//                               ),
//                             ),
//                             ainer(
//                                 margin: const EdgeInsets.all(10.0),
//                                 width: MediaQuery.of(context).size.width / 5,
//                                 child: ctRatio(
//                                     aspectRatio: 1.0 / 1.0,
//                                     child: ainer(
//                                       foregroundDecoration:ecoration(
//                                           image: rationImage(
//                                             image: orkImage("https://pic1.zhimg.com/50/v2-bb3806c2ced60e5b7f38a0aa06b89511_400x224.jpg"),
//                                             centerSlice: .fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                                           ),
//                                           borderRadius: const BorderRadius.all(const Radius.circular(6.0))
//                                       ),
//                                     )
//                                 )
//                             )
//                           ],
//                         )
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return rialApp(
//       theme: GlobalConfig.themeData,
//       home: fold(
//         appBar: ar(
//           title: barSearch(),
//         ),
//         body: leChildScrollView(
//           child: ainer(
//             child: mn(
//               children: <Widget>[
//                 myInfoCard(),
//                 myServiceCard(),
//                 settingCard(),
//                 videoCard(),
//                 ideaCard()
//               ],
//             ),
//           ),
//         )
//       ),
//     );
//   }

// }