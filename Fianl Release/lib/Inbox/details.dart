import 'package:TikTokBharat/Inbox/report.dart';
import 'package:TikTokBharat/follow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
   bool isSwitched = false;
  bool isSwitched1 = true;
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
        title: Text(
                'Details',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
      body: Column(
        children: <Widget>[
            InkWell(
               onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Following(),
                  ));
                },
              child: ListTile(
                    leading: Image.asset(
                      'assets/images/salmann2.jpg',
                      height: 65.h,
                      width: 65.w,
                    ),
                    title: Text(
                      'Salmann4225',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      'No bio yet',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
            ),
                Divider(),
 Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Mute notifications',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Pin to top',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Switch(
                        value: isSwitched1,
                        onChanged: (value) {
                          setState(() {
                            isSwitched1 = value;
                            print(isSwitched1);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ),

                InkWell(
                   onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => Reports(),
                    ));
                  },
                  child: ListTile(
                    title: Text(
                          'Report',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        trailing: Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
