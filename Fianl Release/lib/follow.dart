import 'package:TikTokBharat/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            // onTap: () {
            //   Navigator.pop(context);
            // },
              onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
              
          ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              transform: Matrix4.translationValues(15.0, 0.0, 0.0),
              child: Text(
                'Salmann245',
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
                onTap: () {},
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
                '@Salmann245',
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
                        '7',
                        style: TextStyle(
                          fontSize: 16,
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
                        '4.5M',
                        style: TextStyle(
                          fontSize: 16,
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
                        '63.5M',
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
                      // border: Border.all(),
                      color: Colors.pink[300],
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(),
                        ),
                    child: Image.asset(
                      'assets/images/instagram.png',
                      height: 50.h,
                      width: 60.w,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Meet me in Instagram',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Instagram - Salmann245',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Actor',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              NestedTabBar(),
            ],
          ),
        ),
      ),
    );
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
            Tab(
              icon: Image.asset(
                'assets/images/line.png',
                height: 30.h,
                width: 30.w,
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Tab(
              icon: Image.asset(
                'assets/images/love.png',
                height: 30.h,
                width: 30.w,
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
              Container(),
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
            ],
          ),
        )
      ],
    );
  }
}
