//import 'dart:math';
import 'package:TikTokBharat/home.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:TikTokBharat/BaseUrl/ip_server.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class OtpCheckerPage extends StatefulWidget {
  final String mobile;
  OtpCheckerPage(this.mobile);
  // OtpCheckerPage({Key key}) : super(key: key);

  @override
  _OtpCheckerPageState createState() => _OtpCheckerPageState();
}

class _OtpCheckerPageState extends State<OtpCheckerPage>
    with SingleTickerProviderStateMixin {
  String Otp1 = "", Otp2 = "", Otp3 = "", Otp4 = "", Otp5 = "", Otp6 = "";
  List<String> responseList = [];

  AnimationController _controller;
  FocusNode myFocusNode;
  bool submit;
  @override
  void initState() {
    myFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(myFocusNode);
    });
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..addListener(() {
            setState(() {});
          });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: 'OTP',
      body: _body(context),
    );
  }

  final focus0 = FocusNode();
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();
  final focus5 = FocusNode();

  // double calculatedFirstDepth = stagger(firstDepth, _controller.value, 0.25);
  Widget _body(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: _topLayout(context),
        ),
      ],
    );
  }

  Widget _boxWithLable(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              //alignment: Alignment.center,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Enter the 4 digit OTP sent to",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("+91 ${widget.mobile}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red)),
                  ),
                ],
              )),
        ),
        _boxBuilder()
      ],
    );
  }

  Widget _boxBuilder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,

                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    maxLength: 1,
                    focusNode: focus0,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    onChanged: (String val) {
                      print("helloAutofucs$val ");
                      Otp1 = val;
                      print("one$val");
                      FocusScope.of(context).requestFocus(focus1);
                    },
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,

                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    maxLength: 1,
                    focusNode: focus1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    onChanged: (String val) {
                      Otp2 = val;
                      print("two$val");

                      FocusScope.of(context).requestFocus(focus2);
                    },
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,

                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    maxLength: 1,
                    focusNode: focus2,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    onChanged: (String val) {
                      Otp3 = val;
                      print("three$val");

                      FocusScope.of(context).requestFocus(focus3);
                    },
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,

                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    maxLength: 1,
                    focusNode: focus3,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    onChanged: (String val) {
                      Otp4 = val;
                      print("four$val");

                      FocusScope.of(context).requestFocus(focus4);
                    },
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,

                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    maxLength: 1,
                    focusNode: focus4,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    onChanged: (String val) {
                      Otp5 = val;
                      print("five$val");

                      FocusScope.of(context).requestFocus(focus5);
                    },
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,

                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    maxLength: 1,
                    focusNode: focus5,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    onChanged: (String val) {
                      Otp6 = val;
                      print("six$val");
                    },
                  ),

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ],
          ),
        ),
        _bottomButton(context)
      ],
    );
  }

  Widget _bottomButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 50, top: 30),
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                otpRegister(context);
              },
              child: Text("Verify",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    //color: Colors.grey[900],
                    fontStyle: FontStyle.normal,
                  )),
            ),
                //           FlatButton(
                // onPressed: () {

                //   _resendOtp(context);
                // },
                // child: Center(
                //   child: Text(
                //     'Resend OTP',
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 12,
                //       fontFamily: "Roboto",
                //       letterSpacing: sqrt1_2,
                //     ),
                //   ),
                // ),
                //           ),
          ],
        )
        
        
        );
  }

  Widget _topLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[_boxWithLable(context)],
      ),
    );
  }

  var err = "";

  otpRegister(BuildContext context) {
    if (submit != true) {
      if (Otp1.length == 0 ||
          Otp1.length != 1 ||
          Otp2.length == 0 ||
          Otp2.length != 1 ||
          Otp3.length == 0 ||
          Otp3.length != 1 ||
          Otp4.length == 0 ||
          Otp4.length != 1 ||
          Otp5.length == 0 ||
          Otp5.length != 1 ||
          Otp6.length == 0 ||
          Otp6.length != 1) {
        err = "Enter Valid Otp Number";
        print(Otp1.length);

        errAl(context, err);
      } else {
        submit = true;
        debugPrint("###########################$Otp1");
        debugPrint("###########################$Otp2");
        debugPrint("###########################$Otp3");
        debugPrint("###########################$Otp4");
        debugPrint("###########################$Otp5");
        debugPrint("###########################$Otp6");

        validateOtp(context);
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

  Map<String, dynamic> userOtp;
  SharedPreferences preferences;
  Future<String> validateOtp(BuildContext context) async {
    showProcess(context, "Validating OTP..");
    preferences = await SharedPreferences.getInstance();

    String mobilenumber = preferences.getString("phone_number");

    print("object$mobilenumber");

    final String url = baseUrl + "/login_otp/";
    print("baseurl$url");

    http.Response response = await http.post(url, body: {
      "phone_number": mobilenumber,
      "otp": Otp1 + Otp2 + Otp3 + Otp4 + Otp5 + Otp6,
    });

    userOtp = jsonDecode(response.body);
     bool status=userOtp["status"];

     print("user status is12312343431344$status");

    debugPrint("successfully created $userOtp[0]");
    if (userOtp['status'] == true) {
     preferences.setBool('status', status);
      Otp1 = "";
      Otp2 = "";
      Otp3 = "";
      Otp4 = "";
      Otp5 = "";
      Otp6 = "";

      preferences.setBool("isLogged", true);

      preferences.setString(
          "sessionid",
          response.headers['set-cookie'].substring(0, 75) +
              " " +
              response.headers['set-cookie'].substring(154, 197));
      print(response.headers['set-cookie']);
      print(response.headers['set-cookie'].substring(0, 75) +
          " " +
          response.headers['set-cookie'].substring(154, 197));

      String uidkey = preferences.getString("sessionid");
      debugPrint("sessionnnnnnnnnnnnnnnn id$uidkey");
      showToast("Your OTP successfully Verified", gravity: Toast.CENTER);

      Navigator.of(context, rootNavigator: true).pop();

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => Home()));
      setState(() {
        print(userOtp);
        Otp1 = "";
        Otp2 = "";
        Otp3 = "";
        Otp4 = "";
        Otp5 = "";
        Otp6 = "";
      });
    } else {
      err = userOtp['msg'];
      showToast(err, gravity: Toast.CENTER);
      Otp1 = "";
      Otp2 = "";
      Otp3 = "";
      Otp4 = "";
      Otp5 = "";
      Otp6 = "";

      Navigator.of(context, rootNavigator: true).pop();
      // Navigator.of(context).pushReplacement(new MaterialPageRoute(
      //   builder: (BuildContext context) =>  otpRegister(mobilenumber),
      // ));
      // errAl(context, err);
    }
  }

  // void showToast(String msg, {int duration, int gravity}) {
  //   Toast.show(msg, context, duration: duration, gravity: gravity);
  // }

  // Map<String, dynamic> user;

  // Future<String> _resendOtp(BuildContext context) async {
  //   showProcess(context, "Resend OTP..");
  //   preferences = await SharedPreferences.getInstance();

  //   String mobilenumber = preferences.getString("phone_number");

  //   print("resend object$mobilenumber");

  //   final String url = baseUrl + "/resendotp/";
  //  print("baseurl$url");

  //   http.Response response = await http.post(url, body: {
  //     "phone_number": mobilenumber,

  //   });

  //   user = jsonDecode(response.body);

  //   if (user['status'] == true) {

  //     showToast("Resend OTP successfully ", gravity: Toast.CENTER);

  //     Navigator.of(context, rootNavigator: true).pop();

  //     // Navigator.pushReplacement(context,
  //     //     MaterialPageRoute(builder: (BuildContext context) => HomePageAll()));
  //     setState(() {
  //       print(userOtp);

  //     });
  //   } else {
  //     err = userOtp['msg'];
  //     showToast(err, gravity: Toast.CENTER);

  //     Navigator.of(context, rootNavigator: true).pop();
  //     Navigator.of(context).pushReplacement(new MaterialPageRoute(
  //       builder: (BuildContext context) => OtpCheckerPage(mobilenumber),
  //     ));
  //     // errAl(context, err);
  //   }

 
  // }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
