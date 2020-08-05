import 'package:TikTokBharat/Inbox/details.dart';
import 'package:TikTokBharat/Inbox/newchart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
class Usermsg extends StatelessWidget {
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
                  'Sai Rebba143',
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
                child: InkWell(
                   onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => Details(),
                    ));
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 630.h,),
            Divider(),
               Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 47.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 200.w,
                  child: TextFormField(
  decoration: InputDecoration(
        border: InputBorder.none,
    labelText: 'Send a message...',
    labelStyle: TextStyle(
       color: Colors.grey,
       fontSize: 17,
    ),
  ),
),
                ),
                 Icon(
          Icons.send, 
          size: 25,
          color: Colors.black,
        ),
              ],
            ),
          ),
        ),
       
      ],
        ),
          ],
        ),
      ),
     
    );
  }
}