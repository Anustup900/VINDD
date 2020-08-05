import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Storage extends StatefulWidget {
  @override
  _StorageState createState() => _StorageState();
}

class _StorageState extends State<Storage> {
 

  TapGestureRecognizer _flutterTapRecognizer;
  TapGestureRecognizer _githubTapRecognizer;


  @override
  void dispose() {
    _flutterTapRecognizer.dispose();
    _githubTapRecognizer.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Center(
              child: Text(
                'Storage',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Cache:0.0MB',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Container(
                  //   decoration: BoxDecoration(
                  //  border: Border.all(color: Colors.grey),
                  //  borderRadius: BorderRadius.circular(5),
                  //   ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildAboutDialog(context),
                      );
                      // Perform some action
                    },
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "You can delete your cache to free up sapce this won't affect your TikTok experience.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Downloads:0.0MB',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Container(
                  //   decoration: BoxDecoration(
                  //  border: Border.all(color: Colors.grey),
                  //  borderRadius: BorderRadius.circular(5),
                  //   ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildAboutDialog(context),
                      );
                      // Perform some action
                    },
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Downloads may include effects, filters, strickers, and virtual gifts downloaded in your app, You'll be able to downloads them again if you need them.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutDialog(BuildContext context) {
    return new AlertDialog(
      title: Text(
        'Clear cache?',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(width: 50),
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
