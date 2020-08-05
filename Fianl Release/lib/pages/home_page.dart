import 'package:TikTokBharat/widgets/home/controls/onscreen_controls.dart';
import 'package:TikTokBharat/widgets/home/home_video_renderer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, position) {
            return Container(
                 height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Stack(
                children: <Widget>[AppVideoPlayer(), onScreenControls()],
              ),
            );
          },
          itemCount: 10),
    );
  }
}
