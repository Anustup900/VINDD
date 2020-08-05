import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
              
          ),
        title: Text(
                'Salmann245',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
      body:NestedTabBar(),
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

    _nestedTabController = new TabController(length: 4, vsync: this);
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
                icon: Text(
                      'VIDEOS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
              ),     
           
           Tab(
                icon: Text(
                      'HASHTAGS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
              ), 
            Tab(
                icon: Text(
                      'SOUNDS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
              ), 
               Tab(
                icon: Text(
                      'EFFECTS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
              ), 
          ],
        ),
        Container(
          height: screenHeight * 0.78,
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
                        Icon(
                          Icons.star_border,
                          size: 80,
                          color: Colors.grey,
                        ),
                        Text(
                      "Favorite hashtags",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 10.h,),
                      Text(
                      "Your favorite hashtags will appear here",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                
                    ],),
                   Container(height:100.h),
                  ],
                ),
              ),

              Container(
                child: Column(    
                  mainAxisAlignment: MainAxisAlignment.spaceAround,              
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.star_border,
                          size: 80,
                          color: Colors.grey,
                        ),
                        Text(
                      "Favorite Sounds",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 10.h,),
                      Text(
                      "Your favorite sounds will appear here",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                
                    ],),
                   Container(height:100.h),
                  ],
                ),
              ),

             Container(
                child: Column(    
                  mainAxisAlignment: MainAxisAlignment.spaceAround,              
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.star_border,
                          size: 80,
                          color: Colors.grey,
                        ),
                        Text(
                      "Favorite effects",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 10.h,),
                      Text(
                      "Your favorite effects will appear here",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                
                    ],),
                   Container(height:100.h),
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
