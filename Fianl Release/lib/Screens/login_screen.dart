import 'package:TikTokBharat/Screens/form.dart';
import 'package:TikTokBharat/home.dart';
import 'package:flutter/material.dart';
//import 'package:tiktok/Screens/otp.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(        
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Log in to  VINDD',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Manage your account, check notifications,',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              Text(
                'comment on videos, and more',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 16,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/user.png',
                          height: MediaQuery.of(context).size.height / 25,
                        ),
                        SizedBox(width: 14),
                        Text(
                          'Use phone Number',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Forms(),
                  ));
                },
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: MediaQuery.of(context).size.height / 16,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/facebook.png',
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      SizedBox(width: 14),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: MediaQuery.of(context).size.height / 16,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/google.png',
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      SizedBox(width: 14),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              //     SizedBox(height:12),

              // Container(
              //    transform: Matrix4.translationValues(0.0, 144.0, 0.0),
              //   child: Column(
              //     children: <Widget>[
              //      Divider(),
              //     Padding(
              //       padding: const EdgeInsets.only(top:8.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: <Widget>[
              //           Text(
              //           "Don't have an account? ",
              //   style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 14,
              //           fontWeight: FontWeight.w600
              //   ),
              //   ),
              //   InkWell(
              //           child:Text(
              //           "Sign up",
              //   style: TextStyle(
              //           color: Colors.red.withOpacity(0.9),
              //           fontSize: 15,
              //           fontWeight: FontWeight.w600
              //   ),
              //   ),
              //   onTap: () {
              //         Navigator.of(context).push(new MaterialPageRoute(
              //           builder: (BuildContext context) => new VerifyOtp(),
              //         ));
              //       },
              //   ),
              //         ],
              //       ),
              //     ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
