import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    bool isSwitched1 = true;
    bool isSwitched2 = true;
    ScreenUtil.init(context, width: 375, height: 812);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Post',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 200.w,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Describr your video',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {},
                          child: Text(
                            '#Hashtags',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Text(
                            '#Hashtags',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    'assets/images/patch.png',
                    height: 155.h,
//width: 160.w,
                  ),
                ),
              ],
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.lock_open,
                size: 24,
                color: Colors.black,
              ),
              title: Text(
                'Who can view this video',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              trailing: Text(
                'Public',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.comment,
                size: 24,
                color: Colors.black,
              ),
              title: Text(
                'Allow comments',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              trailing: Switch(
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
            ),
            ListTile(
              leading: Icon(
                Icons.video_call,
                size: 24,
                color: Colors.black,
              ),
              title: Text(
                'Allow Dute and React',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              trailing: Switch(
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
            ),
            ListTile(
              leading: Icon(
                Icons.file_download,
                size: 24,
                color: Colors.black,
              ),
              title: Text(
                'Save to device',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              trailing: Switch(
                value: isSwitched2,
                onChanged: (value) {
                  setState(() {
                    isSwitched2 = value;
                    print(isSwitched2);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
            ),
            SizedBox(height:40.0),
            Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: Text(
                'Share posted video to:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height:20),
            Container(
              width: 170.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.comment,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey,),
                    //   borderRadius: BorderRadius.circular(50)
                    // ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: Image.asset(
                        'assets/images/instagram.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey,),
                    //   borderRadius: BorderRadius.circular(50)
                    // ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: Image.asset(
                        'assets/images/plusion.png',
                        height: 50.h,
                        width: 50.w,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
