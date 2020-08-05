import 'package:TikTokBharat/Inbox/directmsg.dart';
import 'package:TikTokBharat/home.dart';
import 'package:TikTokBharat/profile/Profile.dart';
import 'package:TikTokBharat/resources/assets.dart';
import 'package:TikTokBharat/resources/dimen.dart';
import 'package:TikTokBharat/search/searched.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  String dropdownValue = 'All activity';
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Container(
                    //  transform: Matrix4.translationValues(-62.0, 2.0, 0.0),
                    child: Icon(Icons.keyboard_arrow_down)
                    ),
                  iconSize: 30,
                  elevation: 16,
                  style: TextStyle(color: Colors.black,
                  fontSize: 17,
                  ),
                   underline: Container(
        height: 1,
        color: Colors.white,
      ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'All activity',
                    'Likes',
                    'Comments',
                    'Mentions',
                    'Followers',
                    'TikTokBharath'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(
                          child: Text(
                              value)),
                    );
                  }).toList(),
                ),
                Container(
                    transform: Matrix4.translationValues(68.0, 0.0, 0.0),
                  child: InkWell(
                      onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Directmsg(),
                  ));
                },
                    child: Image.asset(
                          'assets/images/lettericon.png',
                          height: 30.h,
                          width: 30.w,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: Builder(
              builder: (context) {
                switch (dropdownValue) {
                  case 'All activity':
                     return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/comment.png',
                                      height: 80.h,
                                      width: 80.w,
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'All activity',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                    Text(
                                      'Notification about your account will appear here',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                );
                        });

                    break;
                  case 'Likes':
                    return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                            child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/love.png',
                                      height: 80.h,
                                      width: 80.w,
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Like on your videos',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                    Text(
                                      'When someone likes one of your videos. you will see it here',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                            );
                        });

                    break;
                  case 'Comments':
                    return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  Icon(
                                    Icons.insert_comment,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Comment on your Videos',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                    Padding(
                                       padding: const EdgeInsets.only(left:14.0, right: 8),
                                      child: Text(
                                        'When someone comments on  one of your videos. you will see it here',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                        });
                    break;
                  case 'Mentions':
                    return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  Icon(
                                    Icons.alternate_email,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'Mentions of you',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                    Text(
                                      'When someone mentions you. you will see it here',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                        });

                    break;
                  case 'Followers':
                    return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'New followers',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                    Text(
                                      'When someone new followers you. you will see it here',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                          );
                        });
                    break;
                  case 'TikTokBharath':
                    return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/transaparentFavicon.png',
                                      height: 80.h,
                                      width: 80.w,
                                    ),
                                    SizedBox(height: 10.h,),
                                    Text(
                                      'From TikTok Bharath',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:12.0, right: 2),
                                      child: Text(
                                        'When TikTok Bharath you important upadates about community and your account, you will see them here',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                        });
                    break;
                  default:
                    return FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          return Container(
                              child: Center(child: Text('All activity')));
                        });
                }
              },
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 60.h,
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(
            color: Colors.grey,
          ),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 8),
              color: Colors.white,
              child: InkWell(
                child: Column(
                  children: <Widget>[
                    Icon(
                      AppIcons.home,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(height: 3),
                    Padding(
                      padding: EdgeInsets.only(top: Dimen.textSpacing),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: Dimen.bottomNavigationTextSize,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Home(),
                  ));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Searched()),
                  );
                },
                // onTap: () {
                //       Navigator.pushReplacement(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => LoginScreen()),
                //       );
                //     },
                child: Column(
                  children: <Widget>[
                    Icon(
                      AppIcons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimen.textSpacing),
                      child: Text(
                        "Discover",
                        style: TextStyle(
                            fontSize: Dimen.bottomNavigationTextSize,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: InkWell(
                // onTap: () {
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(builder: (context) => CameraApp()),
                //   );
                // },
                // onTap: () {
                //           Navigator.pushReplacement(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => LoginScreen()),
                //           );
                //         },
                child: Container(
                  // flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 45.0,
                          height: 32.0,
                          child: Stack(children: [
                            Container(
                                margin: EdgeInsets.only(left: 10.0),
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(
                                        Dimen.createButtonBorder))),
                            Container(
                                margin: EdgeInsets.only(right: 10.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(
                                        Dimen.createButtonBorder))),
                            Center(
                                child: Container(
                              height: double.infinity,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Dimen.createButtonBorder)),
                              child: Icon(
                                Icons.add,
                                size: 20.0,
                              ),
                            )),
                          ]))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: InkWell(
                // onTap: () {
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(builder: (context) => Inbox()),
                //   );
                // },

                // onTap: () {
                //         Navigator.pushReplacement(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => LoginScreen()),
                //         );
                //       },
                child: Column(
                  children: <Widget>[
                    Icon(AppIcons.messages, color: Colors.black, size: 20),
                    Padding(
                      padding: EdgeInsets.only(top: Dimen.textSpacing),
                      child: Text(
                        "Inbox",
                        style: TextStyle(
                            fontSize: Dimen.bottomNavigationTextSize,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    InkWell(
                      // onTap: () {
                      //   Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginScreen()),
                      //   );
                      // },
                      child:
                          Icon(AppIcons.profile, color: Colors.grey, size: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimen.textSpacing),
                      child: Text(
                        "Me",
                        style: TextStyle(
                            fontSize: Dimen.bottomNavigationTextSize,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}