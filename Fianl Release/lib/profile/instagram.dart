import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:TikTokBharat/BaseUrl/ip_server.dart';

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {

        SharedPreferences preferences;
 String instagram;
var Instagram="";
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      preferences = sp;
     // uber = preferences.getString('email');
       

      instagram=  preferences.getString('instagram');
      print("helloyoutube$instagram");
     
        
      setState(() {});
    });
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {

                        _eUsername(context);
                       // Navigator.pop(context);
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '$instagram',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      )),
                         onChanged: (String v) {
                    Instagram = v;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
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

  String err;
  Map<String, dynamic> editpro;

  Future _eUsername(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String session = (prefs.getString("sessionid"));
    debugPrint("profilesession $session");
    final String url = baseUrl + "/user_details/";
    print(url);
    try {
      http.Response response = await http
          .put(url,body: {  "username":"","image":"","instagram":Instagram,}, headers: {"Cookie": prefs.getString("sessionid")});

      editpro = jsonDecode(response.body);
      
      

      instagram = editpro['username'];
  Navigator.pop(context,instagram);
     // print("bio$name");
            print("responce is$editpro");

    
  
    

  
      if (this.mounted) {
        // print(response.body);
        // return newsModelFromJson(response.body);
      }
    } catch (_) {
      if (this.mounted) {
        setState(() {
          err = "Failed to Connect to the Server !";
        });
      }
    }
  }
}