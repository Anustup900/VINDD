import 'dart:math';

import 'package:TikTokBharat/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
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
                          'Log in',
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
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter User name or mobile No',
                                    // border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                               Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter Password',
                                    // border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Home()),
                                  );
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
                        )),
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
