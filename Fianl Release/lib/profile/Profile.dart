import 'package:TikTokBharat/BaseUrl/ip_server.dart';
import 'package:TikTokBharat/Inbox/Inbox.dart';
import 'package:TikTokBharat/Settings/settings.dart';
import 'package:TikTokBharat/home.dart';
import 'package:TikTokBharat/profile/edit_profile.dart';
//import 'package:TikTokBharat/profile/favourite.dart';
import 'package:TikTokBharat/profile/find_friends.dart';
import 'package:TikTokBharat/resources/assets.dart';
import 'package:TikTokBharat/resources/dimen.dart';
import 'package:TikTokBharat/search/searched.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  SharedPreferences preferences;
  bool status;
  String name = "";
  String bio, instagram, youtube;
  int followers, following;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      preferences = sp;
      _getProfile();
      print("helloinitstate");
      // print("initsate$name");

      name = preferences.getString('username');
      followers = preferences.getInt('Followers_count');
      // following=preferences.getInt('Following_count');

      print("initsate$name");

      print("initsate followers$followers");

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(
            Icons.person_add,
            color: Colors.black,
            size: 35,
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Findfriends()),
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              transform: Matrix4.translationValues(15.0, 0.0, 0.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(35.0, 0.0, 0.0),
              child: InkWell(
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 25,
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  child: Image.asset('assets/images/salmann2.jpg'),
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "$following",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "$followers",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150.w,
                    padding: EdgeInsets.symmetric(vertical: 11),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      // color: Colors.red.withOpacity(0.9),
                    ),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()),
                            );
                          },
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.of(context).push(new MaterialPageRoute(
                  //       builder: (BuildContext context) => new Favourite(),
                  //     ));
                  //   },
                  //   child: Container(
                  //     padding: EdgeInsets.symmetric(vertical: 3),
                  //     decoration: BoxDecoration(
                  //       border: Border.all(color: Colors.grey),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/hastag.png',
                  //       height: 40.h,
                  //       width: 40.w,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              NestedTabBar(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 60.h,
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(
            //                    <--- top side
            color: Colors.grey,
            //width: 3.0,
          ),
        )),
        // decoration: BoxDecoration(color: Colors.white, boxShadow: [
        //   BoxShadow(color: Colors.pink, offset: Offset(3, 1), blurRadius: 7),
        // ]),
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
                //  onTap: () {
                //         Navigator.pushReplacement(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => CameraApp()),
                //         );
                //       },

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
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Inbox()),
                  );
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
                    Icon(AppIcons.messages, color: Colors.grey, size: 20),
                    Padding(
                      padding: EdgeInsets.only(top: Dimen.textSpacing),
                      child: Text(
                        "Inbox",
                        style: TextStyle(
                            fontSize: Dimen.bottomNavigationTextSize,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: InkWell(
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      // onTap: () {
                      //   Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginScreen()),
                      //   );
                      // },
                      child:
                          Icon(AppIcons.profile, color: Colors.black, size: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimen.textSpacing),
                      child: Text(
                        "Me",
                        style: TextStyle(
                            fontSize: Dimen.bottomNavigationTextSize,
                            color: Colors.black),
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

  errAl(BuildContext context, String err) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(err),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  showProcess(BuildContext context, String err) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                width: 50,
              ),
              Text(err),
            ],
          ),
        );
      },
    );
  }

  String err;
  Map<String, dynamic> profile;

  Future _getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String session = (prefs.getString("sessionid"));
    debugPrint("profilesession $session");
    final String url = baseUrl + "/user_details/";
    print(url);
    try {
      http.Response response = await http
          .get(url, headers: {"Cookie": prefs.getString("sessionid")});

      profile = jsonDecode(response.body);

      name = profile['username'];
      followers = profile['Followers_count'];
      following = profile['Following_count'];

      bio = profile['bio'];
      instagram = profile['instagram'];
      youtube = profile['youtube'];

      print("bio$bio");
      print("followers$followers");
      print("youtube$youtube");
      print('name$name');
      prefs.setString('username', name);
      prefs.setString('bio', bio);
      prefs.setString('instagram', instagram);
      prefs.setString('youtube', youtube);

      print("Responce is ##################################$profile");
      print("followers$followers");
      if (this.mounted) {
        // print(response.body);
        // return newsModelFromJson(response.body);
      }
    } catch (_) {
      if (this.mounted) {
        setState(() {
          err = "Failed to Connect to the Server !";
        });
      }
    }
  }
}

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: <Widget>[
            Container(
              width: 80,
              child: Tab(
                icon: Image.asset(
                  'assets/images/line.png',
                  height: 30.h,
                  width: 30.w,
                ),
              ),
            ),
            Container(
              width: 80,
              child: Tab(
                icon: Image.asset(
                  'assets/images/love.png',
                  height: 30.h,
                  width: 30.w,
                ),
              ),
            ),
            Container(
              width: 80,
              child: Tab(
                icon: Image.asset(
                  'assets/images/pic2.png',
                  height: 30.h,
                  width: 30.w,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: screenHeight * 0.77,
          // margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Container(
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/Aamir-Khan.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/Aamir-Khan.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/Aamir-Khan.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/Shah_Rukh.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/Shah_Rukh.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/Shah_Rukh.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/pawan1.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/pawan1.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                      SizedBox(width: 3.w),
                      Image.asset(
                        'assets/images/pawan1.jpg',
                        width: MediaQuery.of(context).size.width / 3.1,
                      ),
                    ],
                  ),
                ]),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "This user's liked videos are private",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Videos liked by @Salmann245 are currently",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "hidden",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(height: 100.h),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Your private videos",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "To make your video visible only to yourself,set",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'it to "Private" in the videos privacy settings',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(height: 100.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
