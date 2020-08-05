import 'package:TikTokBharat/Screens/form.dart';
import 'package:TikTokBharat/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign up in to Tik Tik',
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
                          'assets/user.png',
                          height: MediaQuery.of(context).size.height / 25,
                        ),
                        SizedBox(width: 14),
                        Text(
                          'Use phone / username',
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
                        'assets/facebook.png',
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
                        'assets/google.png',
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
              SizedBox(height: 12),
              Container(
                transform: Matrix4.translationValues(0.0, 134.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "By Continuing,you agree to TikTik's",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Terms of Use ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "and",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                       SizedBox(height:2),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "confirm that you have read TikTik's",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Privacy Policy.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height:8),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "alredy have an account? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  color: Colors.red.withOpacity(0.9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new LoginScreen(),
                              ));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
