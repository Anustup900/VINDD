import 'package:flutter/material.dart';

class DataSaver extends StatefulWidget {
  @override
  _DataSaverState createState() => _DataSaverState();
}

class _DataSaverState extends State<DataSaver> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                    leading: InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: Center(
                      child: Text(
                        'Data Saver',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Data Saver',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            ),
                          ],
                        ),
                      ),
                      //  SizedBox(height:10),
                      Text(
                        "Data Saver will reduce your Cellular data usage Videos may be at  a lower resolution or take longer to load. This won't apply when you'renon Wi-Fi",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
