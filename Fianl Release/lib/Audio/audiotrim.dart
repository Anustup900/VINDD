// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/screenutil.dart';
// import 'package:flutter_screenutil/size_extension.dart';

// class Videotrim extends StatefulWidget {
//   @override
//   _VideotrimState createState() => _VideotrimState();
// }

// class _VideotrimState extends State<Videotrim> {
//   @override
//   Widget build(BuildContext context) {
//       ScreenUtil.init(context, width: 375, height: 812);
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Column(
//             children: <Widget>[
              // ListTile(
              //   leading: InkWell(
              //   onTap: () {
              //           Navigator.pop(context);
              //    },

              //     child: Icon(
              //       Icons.arrow_back,
              //       size: 25,
              //       color: Colors.black,
              //     ),
              //   ),
              //   title: Text(
              //     'Trim Sound Clip',
              //     style: TextStyle(
              //       fontSize: 19,
              //       color: Colors.black,
              //     ),
              //   ),
                
              // ),
          //     SizedBox(height: 30,),
          //     Container(
          //         height:150.h,
          //         width: 150.w,
          //     decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: const AssetImage('assets/images/Salman.png'),
          //     fit: BoxFit.cover,
            
          //   ),
          //   borderRadius: new BorderRadius.circular(25.0),
          //    // border: Border.all(width: 1.0, color: const Color(0xff707070)),
          // ),
          //     ),
          //      Padding(
          //        padding: const EdgeInsets.all(15.0),
          //        child: Text(
          //           'Jio Ho -Ar Rahman(Slumdog Millinaine Music From The motion Picture) Instrumental',
          //            //textAlign: TextAlign.center,
          //           style: TextStyle(
          //             fontSize: 14,
          //             color: Colors.black,
          //           ),
          //         ),
          //      ),
//                SizedBox(height: 20,),
//                 Image.asset(
//                     'assets/images/trim.png',
//                     // height: 92.h,
//                     // width: 87.w,
//                   ),
//             ],
//           ),
          
//         ),
//       ),
//     );
//   }
// }



import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Videotrim(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Videotrim extends StatefulWidget {
  @override
  _VideotrimState createState() => _VideotrimState();
}

class _VideotrimState extends State<Videotrim> {
  AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  String currentTime = "00:00";
  String completeTime= "00:00";

  @override
  void initState() {
    super.initState();

    _audioPlayer.onAudioPositionChanged.listen((Duration duration){
      setState(() {
        currentTime = duration.toString().split(".")[0];
      });
    });

    _audioPlayer.onDurationChanged.listen((Duration duration){
      setState(() {
        completeTime = duration.toString().split(".")[0];
      });
    });

  }

  @override
  Widget build(BuildContext context) {
      ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
              leading: InkWell(
                onTap: () {
                        Navigator.pop(context);
                 },

                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'Trim Sound Clip',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[

        //  Image.asset("assets/12.jpg", fit: BoxFit.contain,),

          Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
           
                  SizedBox(height: 30,),
              Container(
                  height:150.h,
                  width: 150.w,
              decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/Salman.png'),
              fit: BoxFit.cover,
            
            ),
            borderRadius: new BorderRadius.circular(25.0),
             // border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
              ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Text(
                    'Jio Ho -Ar Rahman(Slumdog Millinaine Music From The motion Picture) Instrumental',
                     //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                      onPressed: (){
                        if(isPlaying){
                          _audioPlayer.pause();

                          setState(() {
                            isPlaying = false;
                          });
                        }else{
                          _audioPlayer.resume();

                          setState(() {
                            isPlaying = true;
                          });
                        }

                      },
                    )  ,

                    SizedBox(width: 16,),

                    IconButton(
                      icon: Icon(Icons.stop),
                      onPressed: (){
                        _audioPlayer.stop();

                        setState(() {
                          isPlaying = false;
                        });

                      },
                    ),

                    Text(currentTime, style: TextStyle(fontWeight: FontWeight.w700),),

                    Text(" | "),

                    Text(completeTime, style: TextStyle(fontWeight: FontWeight.w300),),



                  ],
                ),
                 FlatButton(
             onPressed: () async{
          String filePath = await FilePicker.getFilePath();

          int status = await _audioPlayer.play(filePath, isLocal: true);

          if(status == 1){
            setState(() {
              isPlaying = true;
            });
          }
        },
        child: Icon(
          Icons.music_note,
          size: 40,
          color: Colors.black,
        ),
          )
              ],
            ),
         
         
        ],
      ),


      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.audiotrack),
       
      // ),
    );
  }
}
