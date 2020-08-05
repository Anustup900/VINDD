import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Reports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
              
          ),
        title: Text(
                'TikTok Bharath For Business',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.h,),
              Text(
                'Dear Partner,',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20,),
                Text(
                'We are proud to be serving many millions of users in India. Over the past few years, our apps have emerged as leading players in the market, with substantial growth and extraordinary achievements. It is our privilege to inspire creativity and bring joy to so many people on a daily basis.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'On June 29 2020, the Government of India decided to block 59 apps, including TikTok. We have been invited to meet with concerned government stakeholders for an opportunity to respond and submit clarifications. We want you to know that all data on TikTok remains safe and secure, and we continue to comply with Indian law. Further, we have never acted in any manner that would compromise the integrity of India.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Providing a stable environment to all our partners remains a top priority for us. As our valued partner, we wish to inform you that we’re committed to being your partner, and persevering together in the days and years ahead. We will keep you informed of further developments.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                'Regards',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.h,),
              Text(
                'Medhi,',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.h,),
              Text(
                'TikTok Bharath',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
                SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}