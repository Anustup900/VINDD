import 'package:TikTokBharat/resources/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:TikTokBharat/BaseUrl/ip_server.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:TikTokBharat/model/audiomodel.dart';
//import 'package:TikTokBharat/camera/camera.dart';

class AudioFile extends StatefulWidget {
  @override
  _AudioFileState createState() => _AudioFileState();
}


class _AudioFileState extends State<AudioFile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //  transform: Matrix4.translationValues(0.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DefAudioWithVideoRecorder()),
                  // );
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.clear,
                  size: 24,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Sounds',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // onPressed: () {
              //   // showSearch(
              //   //   context: context,
              //   //   delegate: CustomSearchDelegate(),
              //   // );
              // },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Container(
                  // transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                  child: ListTile(
                    leading: InkWell(
                      child: Icon(
                        AppIcons.search,
                        color: Colors.grey,
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
                      // child: Text(
                      //   'Search',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ),
            ),
            NestedTabBar(),
          ],
        ),
      ),
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
  Future future;

  @override
  void initState() {
    super.initState();
    initPlayer();
    
future=_getAudioFile();
    _nestedTabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  bool _isPlaying = false;
  // audioCache.play('disco.mp3')

  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  String localFilePath;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: TabBar(
            controller: _nestedTabController,
            indicatorColor: Colors.teal,
            labelColor: Colors.teal,
            unselectedLabelColor: Colors.black54,
            isScrollable: true,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Trending',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Memory Card',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.75,
          // margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Container(
               child: FutureBuilder<dynamic>(
            future: future,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                // Uncompleted State
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                  break;
                default:
                  // Completed with error
                  if (snapshot.data == null)
                    return Container(
                        child: Center(
                      child: Text("No Music Found"),
                    ));
              }
            
              print(snapshot.data);
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Column(children: <Widget>[
                  InkWell(

                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:
                                const AssetImage('assets/images/Shah_Rukh.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: IconButton(
                          iconSize: 20,
                          onPressed: () {
                            setState(() {
                              _isPlaying = !_isPlaying;
                             audioCache.play(snapshot.data[index].audioFile);
                              print('wfdfddf');
                            });
                          },
                          icon: Icon(
                            _isPlaying
                                ? FontAwesomeIcons.pause
                                : FontAwesomeIcons.play,
                            color: Color(0xFF5E35B1),
                          ),
                        ),
                      ),
                      title: Text(
                       snapshot.data[index].audiofileName,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Column(
                        children: <Widget>[
                          Text(
                            snapshot.data[index].audioFile,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          //  Text(
                          //   '0:30',
                          //   style: TextStyle(
                          //     color: Colors.grey,
                          //   ),
                          // ),
                        ],
                      ),
                      // trailing: Icon(
                      //   Icons.keyboard_arrow_right,
                      //   color: Colors.grey,
                      //   size: 24,
                      // ),
                    ),
                  ),
                 
               
                
                  
                ]
                );
                },
              );
            }),
      ),
              Container(
                child: Column(children: <Widget>[
                  InkWell(
                    //        onTap: () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HashTag()),
                    //   );
                    // },
                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/patch.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        'AUD-2020342-WA002.mp3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Unknown Artist',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    //        onTap: () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HashTag()),
                    //   );
                    // },
                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/patch.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        'AUD-2020342-WA002.mp3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Unknown Artist',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    //        onTap: () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HashTag()),
                    //   );
                    // },
                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/patch.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        'AUD-2020342-WA002.mp3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Unknown Artist',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    //        onTap: () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HashTag()),
                    //   );
                    // },
                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/patch.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        'AUD-2020342-WA002.mp3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Unknown Artist',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    //        onTap: () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HashTag()),
                    //   );
                    // },
                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/patch.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        'AUD-2020342-WA002.mp3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Unknown Artist',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    //        onTap: () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HashTag()),
                    //   );
                    // },
                    child: ListTile(
                      leading: Container(
                        height: 110.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/patch.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        'AUD-2020342-WA002.mp3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Unknown Artist',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        
        )
      ],
    );
  }
  errAl(BuildContext context, String err) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(err),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  showProcess(BuildContext context, String err) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                width: 50,
              ),
              Text(err),
            ],
          ),
        );
      },
    );
  }
  String err;
 Future _getAudioFile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String session = (prefs.getString("sessionid"));
    debugPrint("sesssssss$session");
    final String url = baseUrl + "/audioFile/";
    print(url);
    try {
      http.Response response = await http
          .get(url, headers: {"Cookie": prefs.getString("sessionid")});

      //     .get(url, headers: {
      //   "Cookie":
      //       "sessionid=s9kk9raqn8k190ox2jhbeqiao5irhwal; csrftoken=RzoGTsHYqAgur27atGyUbCE0cRr1uyzyLQZdHL5uCRliQbajlSTVbsJbxDuegR2D"
      // });
      if (this.mounted) {
        print(response.body);
        return audioModelFromJson(response.body);
      }
    } catch (_) {
      if (this.mounted) {
        setState(() {
          err = "Failed to Connect to the Server !";
        });
      }
    }
  }

}
