import 'package:TikTokBharat/profile/find_friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class FindContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            //  onTap: () {
            //   Navigator.pop(context);
            // },
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Findfriends()),
              );
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Contacts',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.h),
                ListTile(
                  leading: Image.asset(
                    'assets/images/userimg.png',
                    height: 65.h,
                    width: 65.w,
                  ),
                  title: Text(
                    'Sai Rebba',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '+919876543210',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.9),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/userimg.png',
                    height: 65.h,
                    width: 65.w,
                  ),
                  title: Text(
                    'Sai Rebba',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '+919876543210',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.9),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/userimg.png',
                    height: 65.h,
                    width: 65.w,
                  ),
                  title: Text(
                    'Sai Rebba',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '+919876543210',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.9),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/userimg.png',
                    height: 65.h,
                    width: 65.w,
                  ),
                  title: Text(
                    'Sai Rebba',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '+919876543210',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.9),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/userimg.png',
                    height: 65.h,
                    width: 65.w,
                  ),
                  title: Text(
                    'Sai Rebba',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '+919876543210',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.9),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
