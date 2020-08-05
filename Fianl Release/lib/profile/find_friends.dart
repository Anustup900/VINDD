import 'package:TikTokBharat/profile/Profile.dart';
import 'package:TikTokBharat/profile/findcontact.dart';
import 'package:TikTokBharat/profile/invitefds.dart';
import 'package:TikTokBharat/resources/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Findfriends extends StatelessWidget {
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
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              title: Text(
                    'Find friends',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                
      ),
        body: Column(
          children: <Widget>[
              Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10),
                child: Container(
            height: 50.h,        
            decoration: BoxDecoration(
                color: Colors.grey[300],
//border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: ListTile(
                  leading: InkWell(
                    child: Icon(
                      AppIcons.search,
                      color: Colors.grey,
                      size: 17,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: Container(
                    transform: Matrix4.translationValues(-22.0, -4.0, 0.0),
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
           
             InkWell(
                   onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Invitefriends()),
                );
              },
               child: ListTile(
                 leading: Image.asset(
                   'assets/images/usericon.png',
                   height: 65.h,
                   width: 65.w,
                 ),
                 title: Text(
                   'Invite friends',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 15,
                   ),
                 ),
                 trailing: Icon(
                   Icons.keyboard_arrow_right,
                   size: 22,
                   color: Colors.grey,
                 ),
               ),
             ),

               InkWell(
                  onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FindContacts()),
                );
              },
                 child: ListTile(
                 leading: Image.asset(
                   'assets/images/callicon1.png',
                   height: 65.h,
                   width: 65.w,
                 ),
                 title: Text(
                   'Find contacts',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 15,
                   ),
                 ),
                 trailing: Icon(
                   Icons.keyboard_arrow_right,
                   size: 22,
                   color: Colors.grey,
                 ),
             ),
               ),

               ListTile(
               leading: Image.asset(
                 'assets/images/againfb.png',
                 height: 65.h,
                 width: 65.w,
               ),
               title: Text(
                 'Find Facebook friends',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                 ),
               ),
               trailing: Icon(
                 Icons.keyboard_arrow_right,
                 size: 22,
                 color: Colors.grey,
               ),
             ),
          ],
        ),
      ),
      
    );
  }
}
