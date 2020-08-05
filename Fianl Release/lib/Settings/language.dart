import 'package:flutter/material.dart';
class Languages extends StatelessWidget {
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
                        padding: const EdgeInsets.symmetric(horizontal:8.0),
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
                          title:  Center(
                            child: Text(
                                'Language',
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
                        padding: EdgeInsets.only(top:10, left: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                         Text(
                                  'APP LANGUAGES',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                                 SizedBox(height:10),
                                 Text(
                                  'English',
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
        )
      ),
    );
  }
}