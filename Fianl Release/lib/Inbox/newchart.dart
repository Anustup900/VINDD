import 'package:TikTokBharat/Inbox/message.dart';
import 'package:TikTokBharat/resources/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Newchart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  InkWell(
            child: Icon(
              Icons.clear,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
              
          ),
        title: Text(
                'New chat',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: ListTile(
                  leading: InkWell(
                    child: Icon(
                      AppIcons.search,
                      color: Colors.black,
                      size: 17,
                    ),
                    // onTap: () {
                    //   Navigator.pop(context);
                    // },
                  ),
                  title: Container(
                    transform: Matrix4.translationValues(-19.0, 0.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:10),
         Padding(
           padding: const EdgeInsets.only(left:12.0),
           child: Text(
                  'Friends',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
           ),
         ),
                 InkWell(
                   onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Usermsg(),
                  ));
                },
                   child: ListTile(
                    leading: Image.asset(
                      'assets/images/userimg.png',
                      height: 60.h,
                      width: 60.w,
                    ),
                    title: Text(
                      'Sai Rebba143',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      '@Sai',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    trailing: Icon(
                      Icons.person_add,
                      color: Colors.grey,
                      size: 20,
                    ),
                ),
                 ),
                SizedBox(height: 10.h,),
              Divider(
                color: Colors.grey,
              ),
                 SizedBox(height: 10.h,),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text(
                      'All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                 ),
                   Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text(
                      'p',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                 ),
                 InkWell(
                    onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Usermsg(),
                  ));
                },
                   child: ListTile(
                    leading: Container(
                      child: Image.asset(
                        'assets/images/userimg.png',
                        height: 60.h,
                        width: 60.w,
                      ),
                    ),
                    title: Text(
                      'Power Star',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      '@Pawan',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                   ),
                 ),
                   SizedBox(height: 10.h,),
              Divider(
                color: Colors.grey,
              ),
                 SizedBox(height: 10.h,),
                  Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text(
                      'S',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                 ),
                 InkWell(
                    onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Usermsg(),
                  ));
                },
                   child: ListTile(
                    leading: Container(
                      child: Image.asset(
                        'assets/images/salmann2.jpg',
                        height: 60.h,
                        width: 60.w,
                      ),
                    ),
                    title: Text(
                      'Salman Khan',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      '@Salman',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                   ),
                 ),
        ],
      ),
    );
  }
}