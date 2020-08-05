import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:TikTokBharat/BaseUrl/ip_server.dart';

class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  SharedPreferences preferences;
  String bio,text;
  var Ebio = "";
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      preferences = sp;
      // uber = preferences.getString('email');

      bio = preferences.getString('bio');

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
                      'Bio',
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
                  'Bio',
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: bio,
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      )),
                      maxLines: 1,
                  onChanged: (String v) {
                    Ebio = v;
                    print("onchanged$Ebio");
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
      http.Response response = await http.put(url, body: {
        "username": "",
        "image": "",
        "bio": Ebio,
        "instagram": "",
        "youtube": ""
      }, headers: {
        "Cookie": prefs.getString("sessionid")
      });
      editpro = jsonDecode(response.body);

     setState(() {
      text = Ebio;
    });
      Navigator.pop(context,text);
      print("bioooo$text");
     
      print("responce is$editpro");
 
      if (this.mounted) {
     
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
