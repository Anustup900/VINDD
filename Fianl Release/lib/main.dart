//import 'package:TikTok_Bharath/home.dart';
//import 'package:TikTokBharat/Constant/constant.dart';
import 'package:TikTokBharat/fList.dart';
import 'package:flutter/material.dart';
import 'package:TikTokBharat/splash/splash_screen.dart';
import 'package:provider/provider.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VINDD',
      theme: ThemeData(
        primaryColor: Color(0xff2874F0),
      ),
      // routes: <String,WidgetBuilder>{
      //   SPLASH_SCREEN: (BuildContext context)=> AnimatedSplashScreen(),
      //   SPLASH_PAGE: (BuildContext context)=> Splash(),
      // },

  home: ChangeNotifierProvider(
        create: (_) => ListProvider(),
        child:AnimatedSplashScreen(),
      ),


     // home: AnimatedSplashScreen(),
    );
  }
}
