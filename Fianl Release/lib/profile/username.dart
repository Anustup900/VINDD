import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:TikTokBharat/BaseUrl/ip_server.dart';



  class Username extends StatefulWidget {
    @override
    _UsernameState createState() => _UsernameState();
  }
  
  class _UsernameState extends State<Username> {

      SharedPreferences preferences;
 String name;
var Ename="";
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      preferences = sp;
     // uber = preferences.getString('email');
       

      name=  preferences.getString('username');
     
        
      setState(() {});
    });
  }

    @override
    Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: Container(
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
                      'Username',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  
                  
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Name',
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
                      hintText: name,
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      )
                      ),
                                     onChanged: (String v) {
                    Ename = v;
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
          .put(url,body: {  "username": Ename,"image":"","bio":""}, headers: {"Cookie": prefs.getString("sessionid")});

      editpro = jsonDecode(response.body);
      
      

      name = editpro['username'];
  Navigator.pop(context,name);
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
  
 
