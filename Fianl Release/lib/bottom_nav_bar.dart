
import 'package:TikTokBharat/Screens/login_screen.dart';
import 'package:TikTokBharat/camera/camera.dart';
import 'package:TikTokBharat/profile/Profile.dart';
import 'package:TikTokBharat/search/searched.dart';
import 'package:flutter/material.dart';
import 'package:TikTokBharat/resources/assets.dart';
import 'package:TikTokBharat/resources/dimen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  SharedPreferences preferences;
  bool status;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      preferences = sp;
      // uber = preferences.getString('email');
      status = preferences.getBool('status');

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Divider(
          height: 2,
          color: Colors.grey[700],
        ),
        Container(
          height: 47,
          color: Colors.transparent,
          child: Padding(
              padding: EdgeInsets.only(top: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    // flex: 1,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          AppIcons.home,
                          color: Colors.white,
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimen.textSpacing),
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: Dimen.bottomNavigationTextSize,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // flex: 1,
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
                            color: Colors.white,
                            size: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Dimen.textSpacing),
                            child: Text(
                              "Discover",
                              style: TextStyle(
                                  fontSize: Dimen.bottomNavigationTextSize,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DefAudioWithVideoRecorder()),
                      );
                    },

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
                  Container(
                    // flex: 1,
                    child: InkWell(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Inbox()),
                        // );
                      },
                      // onTap: () {
                      //         Navigator.pushReplacement(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => LoginScreen()),
                      //         );
                      //       },
                      child: Column(
                        children: <Widget>[
                          Icon(AppIcons.messages,
                              color: Colors.white, size: 20),
                          Padding(
                            padding: EdgeInsets.only(top: Dimen.textSpacing),
                            child: Text(
                              "Inbox",
                              style: TextStyle(
                                  fontSize: Dimen.bottomNavigationTextSize,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // flex: 1, SharedPreferences preferences;
                    child: InkWell(
                      onTap: () {
                        loginUser(context);
                        print("profile Tapeeddd");
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => LoginScreen()),
                        // );
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
                            child: Icon(AppIcons.profile,
                                color: Colors.white, size: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Dimen.textSpacing),
                            child: Text(
                              "Me",
                              style: TextStyle(
                                  fontSize: Dimen.bottomNavigationTextSize,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }

  loginUser(BuildContext context) {
    if (status == true) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => Profile()));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
    }
  }
}
