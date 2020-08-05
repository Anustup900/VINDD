// import 'package:Bharat_tiktok/camera.dart';
import 'package:TikTokBharat/search/searched.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HashTag extends StatefulWidget {
  @override
  _HashTagState createState() => _HashTagState();
}

class _HashTagState extends State<HashTag> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Searched()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'assets/images/share1.png',
              width: 40.w,
              height: 40.h,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/hastagbaner1.png',
                  width: 150.w,
                  height: 150.h,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '#NotTheOne',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      '322.6M views',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/hastag.png',
                            width: 20.w,
                            height: 20.h,
                          ),
                          Text(
                            'Add to Favorites',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 8, bottom: 8),
              child: Text(
                "it's a case of mistaken identity because we're",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                "#NotTheOne.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
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
            SizedBox(height: 3.h),
            Row(
              children: <Widget>[
                SizedBox(width: 3.w),
                Image.asset(
                  'assets/images/priya.png',
                  width: MediaQuery.of(context).size.width / 3.1,
                ),
                SizedBox(width: 3.w),
                Image.asset(
                  'assets/images/priya.png',
                  width: MediaQuery.of(context).size.width / 3.1,
                ),
                SizedBox(width: 3.w),
                Image.asset(
                  'assets/images/priya.png',
                  width: MediaQuery.of(context).size.width / 3.1,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          // height: 65.h,
          // transform: Matrix4.translationValues(0, -15.0, 0.0),
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(
              color: Colors.white,
            ),
          )),
          child: Image.asset(
            'assets/images/showvideo1.png',
            width: 80.w,
            height: 80.h,
          ),
        ),
      ),
    );
  }
}
