import 'package:flutter/material.dart';

class EditName extends StatelessWidget {
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
                      'Name',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
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
                      hintText: 'User378564511ee',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      )),
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
}
