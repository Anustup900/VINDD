import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Center(
                child: Text(
                  'Copyright Policy',
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
          padding: EdgeInsets.all(15),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Image.asset(
                'assets/logos2.jpg',
              //  height: MediaQuery.of(context).size.height/3,
                 width: MediaQuery.of(context).size.width/3,
              ),
              SizedBox(height:10),
              Divider(color: Colors.grey,),
               SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Text(
                    'Dear Users,',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                 SizedBox(height:10),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
            ],
          ),
        ),
    );
  }
}