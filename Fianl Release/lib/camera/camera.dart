import 'dart:async';
import 'dart:io';

import 'package:TikTokBharat/Audio/audio.dart';
import 'package:TikTokBharat/Video_trim/uploadfile.dart';
import 'package:TikTokBharat/home.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:camera/camera.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
//import 'AddAudioInVideo.dart';

List<CameraDescription> cameras;

class DefAudioWithVideoRecorder extends StatefulWidget {
  final String audioPath;

  DefAudioWithVideoRecorder({this.audioPath});

  @override
  _DefAudioWithVideoRecorderState createState() =>
      _DefAudioWithVideoRecorderState();
}

class _DefAudioWithVideoRecorderState extends State<DefAudioWithVideoRecorder>
    with WidgetsBindingObserver {
  bool videoRecorderShow = true;
  final audioPlayer = AssetsAudioPlayer();
  CameraController controller;
  //StorageReference reference;
  int timerOptions = 20;
  String finalVideoPath;
  String getMessage;
  Duration time = new Duration(seconds: 15);
  String videoPath;
  final FlutterFFmpeg fFmpeg = new FlutterFFmpeg();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  getCamInfo() async {
    cameras = await availableCameras();
    _initCamera(cameras.first);
  }

  changeUi() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.indigoAccent);
    if (useWhiteForeground(Colors.indigoAccent)) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    }
  }

  @override
  void initState() {
    super.initState();
    changeUi();
    WidgetsBinding.instance.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    getCamInfo();
  }

  void swapCamera(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }
    controller.value.previewSize.longestSide;
    controller = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    // If the controller is updated then update the UI.
    controller.addListener(() {
      if (mounted) setState(() {});
      if (controller.value.hasError) {}
    });

    try {
      await controller.initialize();
    } on CameraException catch (e) {
      print(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    try {
      controller?.dispose();
    } catch (err) {
      print(err);
    }
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // App state changed before we got the chance to initialize.
    if (controller == null || !controller.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      controller.dispose();
    } else if (state == AppLifecycleState.resumed) {
      if (controller != null) {
        _initCamera(controller.description);
      }
    }
  }

  Future<void> _initCamera(CameraDescription description) async {
    controller = CameraController(description, ResolutionPreset.medium,
        enableAudio: false);
    try {
      await controller.initialize();
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  void _toggleCameraLens() {
    final lensDirection = controller.description.lensDirection;
    CameraDescription newDescription;
    if (lensDirection == CameraLensDirection.front) {
      newDescription = cameras.firstWhere((description) =>
          description.lensDirection == CameraLensDirection.back);
    } else {
      newDescription = cameras.firstWhere((description) =>
          description.lensDirection == CameraLensDirection.front);
    }

    if (newDescription != null) {
      _initCamera(newDescription);
    } else {
      print('Asked camera not available');
    }
  }

  void changeVisibility(String whichOne) {
    setState(() {
      if (whichOne == 'start') {
        videoRecorderShow = false;
      }
      if (whichOne == 'stop') {
        videoRecorderShow = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final size = MediaQuery.of(context).size;
    if (controller == null || !controller.value.isInitialized) {
      return Center(
          child: CupertinoActivityIndicator(
        animating: true,
        radius: 20,
      ));
    } else {
      return Scaffold(
        key: _scaffoldKey,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              child: Center(child: new CameraPreview(controller)),
            ),
            //Camera Switch
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 60, 15, 0),
                  child: IconButton(
                    onPressed: () {
                      _toggleCameraLens();
                    },
                    icon: Icon(
                      CupertinoIcons.switch_camera_solid,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 15, 0),
                  child: IconButton(
                      onPressed: () {
                        showTimerOptions();
                      },
                      icon: Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AudioFile()),
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 25, 0),
                      child: Icon(
                        Icons.music_note,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 60, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        icon: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Icon(
                            CupertinoIcons.clear_circled,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    // InkWell(
                    //   // onTap: () {
                    //   //   Navigator.pushReplacement(
                    //   //     context,
                    //   //     MaterialPageRoute(builder: (context) => AudioFile()),
                    //   //   );
                    //   // },
                    //   child: Container(
                    //    transform: Matrix4.translationValues(65.0, 40.0, 0.0),
                    //     child: InkWell(
                    //        onTap: () {
                    //     Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => AudioFile()),
                    //     );
                    //   },
                    //       child: Row(
                    //         children: <Widget>[
                    //           InkWell(
                    //             onTap: () {
                    //               Navigator.pushReplacement(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                     builder: (context) => AudioFile()),
                    //               );
                    //             },
                    //             child: Icon(
                    //               Icons.music_note,
                    //               color: Colors.white,
                    //               size: 26,
                    //             ),
                    //           ),
                    //           SizedBox(width: 10),
                    //           InkWell(
                    //             // onTap: () {
                    //             //   print('gufguui');
                    //             //   Navigator.pushReplacement(
                    //             //     context,
                    //             //     MaterialPageRoute(
                    //             //         builder: (context) => AudioFile()),
                    //             //   );
                    //             // },
                    //             child: Text(
                    //               'Sounds',
                    //               style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 19,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ],
            ),

            //Done
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: size.width * .15,
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 55),
                  child: IconButton(
                    onPressed: () {
//                        addAudio(videoPath);
                      // controller.dispose();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AddAudioInVideo(
                      //               audioPath: widget.audioPath,
                      //               videoPath: videoPath,
                      //             )));
                    },
                    icon: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UploadTrim()),
                        );
                      },
                      child: Icon(
                        CupertinoIcons.check_mark_circled,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Video Recorder
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * .30,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 40),
                        child: Visibility(
                          visible: true,
                          child: Visibility(
                            visible: videoRecorderShow,
                            child: IconButton(
                              // icon: Icon(
                              //   CupertinoIcons.circle_filled,
                              //   color: Colors.white,
                              //   size: 85,
                              // ),
                              icon: Image.asset(
                                'assets/images/showvideo1.png',
                                height: 90.h,
                                width: 90.w,
                              ),
                              onPressed: () {
                                setState(() {
                                  changeVisibility('start');
                                });
                                startVideoRecording();
                              },
                            ),
                            replacement: IconButton(
                              icon: Icon(
                                FontAwesomeIcons.solidStopCircle,
                                color: Colors.white,
                                size: 85,
                              ),
                              onPressed: () {
                                setState(() {
                                  changeVisibility('stop');
                                });
                                _stopVideoRecording();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

  Future<String> startVideoRecording() async {
    if (!controller.value.isInitialized) {
      return null;
    }
    String timestamp() {
      return 'customVideo';
    }

    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/userVideos/Videos';
    bool exists = await Directory(dirPath).exists();
    if (exists == true) {
      await Directory(dirPath).delete(recursive: true);
    }
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${(timestamp())}.mp4';
    if (controller.value.isRecordingVideo) {
      return null;
    }
    try {
      await controller.startVideoRecording(filePath);
      audioPlayer.open(Audio.file(widget.audioPath));
      videoPath = filePath;
      Timer timer = new Timer(Duration(seconds: time.inSeconds), () {
        try {
          controller.stopVideoRecording();
          audioPlayer.stop();
        } on CameraException catch (e) {
          print(e);
          return null;
        }
        setState(() {
          changeVisibility('stop');
        });
      });
      print(timer);
    } on CameraException catch (e) {
      print(e);
      return null;
    }
    return filePath;
  }

  Future<void> _stopVideoRecording() async {
    if (!controller.value.isRecordingVideo) {
      return null;
    }
    try {
      await controller.stopVideoRecording();
      audioPlayer.stop();
    } on CameraException catch (e) {
      print(e);
      return null;
    }
  }

  showTimerOptions() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.all(20),
          child: CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    time = new Duration(seconds: 15);
                    Navigator.of(context, rootNavigator: true).pop("Discard");
                  });
                },
                child: Text('15 sec'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    time = new Duration(seconds: 30);
                    Navigator.of(context, rootNavigator: true).pop("Discard");
                  });
                },
                child: Text('30 sec'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    time = new Duration(seconds: 60);
                    Navigator.of(context, rootNavigator: true).pop("Discard");
                  });
                },
                child: Text('60 sec'),
              ),
            ],
          ),
        );
      },
    );
  }
}
