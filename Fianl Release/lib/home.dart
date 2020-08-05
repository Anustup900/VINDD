// import 'package:TikTokBharat/bottom_nav_bar.dart';
import 'package:TikTokBharat/bottom_nav_bar.dart';
import 'package:TikTokBharat/pages/home_page.dart';
import 'package:TikTokBharat/widgets/home/home_header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            HomeScreen(),
            BottomNavigation(),
            homeHeader(),
          ],
        ),
      ),
    );
  }
}
