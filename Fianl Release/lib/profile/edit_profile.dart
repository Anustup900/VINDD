import 'package:TikTokBharat/profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:TikTokBharat/profile/username.dart';
import 'package:TikTokBharat/profile/bio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'instagram.dart';
import 'youtube.dart';

class EditProfile extends StatefulWidget {
  // final String instagram;
  //  EditProfile (this.instagram);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  SharedPreferences preferences;
  String name, bio, instagram, youtube;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      preferences = sp;
      // uber = preferences.getString('email');

      name = preferences.getString('username');
      bio = preferences.getString('bio');
      instagram = preferences.getString('instagram');
      youtube = preferences.getString('youtube');

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Edit profile',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 45,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 27,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          'Change photo',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //     Padding(
              //       padding: const EdgeInsets.all(13.0),
              //       child: InkWell(
              //           onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => EditName()),
              //   );
              // },
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: <Widget>[
              //             Text(
              //               'Name',
              //               style: TextStyle(
              //                 fontSize: 13,
              //                 color: Colors.black,
              //               ),
              //             ),
              //             Row(
              //               children: <Widget>[
              //                 Text(
              //                   'user3344798543345',
              //                   style: TextStyle(
              //                     fontSize: 13,
              //                     color: Colors.grey,
              //                   ),
              //                 ),
              //                 Icon(
              //                   Icons.keyboard_arrow_right,
              //                   color: Colors.grey,
              //                 ),
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Username()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '$name',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 30,
                    ),
                    // Row(
                    //   children: <Widget>[
                    //     Text(
                    //       'TikTok Bharath.com/@Salmann452',
                    //       style: TextStyle(
                    //         fontSize: 13,
                    //         color: Colors.grey,
                    //       ),
                    //     ),
                    //     SizedBox(width: 2),
                    //     Icon(
                    //       Icons.content_copy,
                    //       color: Colors.black,
                    //       size: 13,
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13, top: 5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bio()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Bio',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '$bio',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Instagram()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Instagram',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '$instagram',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Youtube()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'YouTube',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '$youtube',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
