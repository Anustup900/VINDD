import 'package:TikTokBharat/Inbox/message.dart';
import 'package:TikTokBharat/Inbox/newchart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
class Directmsg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(35.0, 0.0, 0.0),
                child: Text(
                  'Direct messages',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              InkWell(
                 onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => Newchart(),
                    ));
                  },
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
             InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Usermsg(),
                  ));
                },
               child: ListTile(
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
                      'Hii',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    trailing: Text(
                        '12:01',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                  ),
             ),
          ],
        ),
      ),
    );
  }
}