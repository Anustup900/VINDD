import 'dart:math';

import 'package:TikTokBharat/Screens/otp.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:TikTokBharat/BaseUrl/ip_server.dart';
import 'package:toast/toast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}
 var Lphone="";
 bool submit;

class _FormsState extends State<Forms> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: InkWell(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 20,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      title: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.help_outline,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                       // height: MediaQuery.of(context).size.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //  Padding(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 18.0),
                              //   child: TextFormField(
                              //     decoration: InputDecoration(
                              //       hintText: 'Enter Name',
                              //       // border: InputBorder.none,
                              //       hintStyle: TextStyle(
                              //         fontSize: 13,
                              //         color: Colors.black,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'Enter mobile No',
                                    // border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                  ),
                                     onChanged: (String v) {
                    Lphone = v;
                  },
                                ),
                                
                              ),
                              // SizedBox(height: 15),
                              //  Padding(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 18.0),
                              //   child: TextFormField(
                              //     decoration: InputDecoration(
                              //       hintText: 'Enter Password',
                              //       // border: InputBorder.none,
                              //       hintStyle: TextStyle(
                              //         fontSize: 13,
                              //         color: Colors.black,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              SizedBox(height: 20),
                              FlatButton(
                                onPressed: () {
                                  _loginUser(context);
                          
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0),
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xff545454),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          letterSpacing: sqrt1_2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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

var err = "";

  _loginUser(BuildContext context) {
    if (submit != true) {
      if (Lphone.length < 10 ||
          Lphone.length > 10 ||
          Lphone == null ||
          Lphone.length != 10) {
        err = "Enter Valid Phone Number";
        errAl(context, err);
      } else {
        submit = true;
        debugPrint("submitTRueeeeee$Lphone");

        _loginUserApi(context);
      }
    }
    submit = false;
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

  Map<String, dynamic> user;
  SharedPreferences preferences;
  Future<String> _loginUserApi(BuildContext context) async {
    showProcess(context, "Processing....");
    preferences = await SharedPreferences.getInstance();
    final String url = baseUrl + "/login/";
      print("baseurl$url");

    http.Response response = await http.post(url, body: {
      "phone_number": Lphone,
    });
   
    user = jsonDecode(response.body);
    String lnumber = user['phone_number'];

    if (user['status'] == true) {
      preferences.setString('phone_number', lnumber);
      showToast("You are successfully logged in", gravity: Toast.CENTER);
      Lphone = "";

      Navigator.of(context, rootNavigator: true).pop();
      Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => OtpCheckerPage (lnumber)));

      setState(() {
        print(user);

        Lphone = "";
      });
    } else {
      err = user['message'];
     
      showToast(err, gravity: Toast.CENTER);

      Lphone = "";
      Navigator.of(context, rootNavigator: true).pop();
      // Navigator.of(context).pushReplacement(new MaterialPageRoute(
      //   builder: (BuildContext context) => LoginScreen(),
      // ));
    }
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }


}
