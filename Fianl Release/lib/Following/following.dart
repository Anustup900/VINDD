import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Deeee extends StatelessWidget {
  Deeee({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
     ScreenUtil.init(context, width:375, height:812);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(18.w, 28.h),
            child:
                // Adobe XD layer: 'userimag' (shape)
                Container(
              width: 39.w,
              height: 34.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/userimag.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(298.w, 32.h),
            child:
                // Adobe XD layer: '3dots' (shape)
                Container(
              width: 50.w,
              height: 26.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/3dots.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(12.w, 80.h),
            child:
                // Adobe XD layer: 'userimg' (shape)
                Container(
              width: 125.w,
              height: 123.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/userimg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(148.w, 124.h),
            child: Container(
              width: 150.w,
              height: 36.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffbeb4b4)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(304.w, 124.h),
            child: Container(
              width: 50.w,
              height: 36.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Color(0xffffff),
                border: Border.all(width: 1.0, color: const Color(0xffbeb4b4)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(188.w, 132.h),
            child: Container(
              color: Colors.red,
              child: Text(
                'Follow',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 15,
                  color: const Color(0xff231b1b),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(28.w, 207.h),
            child: Text(
              'User Name',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 19,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(304.w, 236.h),
            child: Text(
              'More',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(28.w, 237.h),
            child: Text(
              '@username',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(30.w, 299.h),
            child: Text(
              'Designer',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(30.w, 318.h),
            child: Text(
              'username description',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(30.w, 339.h),
            child: Text(
              'Based: World',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(30.w, 362.h),
            child: Text(
              'Website',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(53.w, 413.h),
            child: Text(
              'Website',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xff9a9696),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(182.w, 414.h),
            child: Text(
              'Website',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xff9a9696),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(296.w, 412.h),
            child: Text(
              'Likes',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xff9a9696),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(30.w, 411.h),
            child: Text(
              '88',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(139.w, 413.h),
            child: Text(
              '88.8K',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(269.w, 411.h),
            child: Text(
              '88',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff231b1b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(320.w, 131.h),
            child:
                // Adobe XD layer: 'hastag' (shape)
                Container(
              width: 19.w,
              height: 24.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/downarrow2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(232.w, 229.h),
            child:
                // Adobe XD layer: 'instagram' (shape)
                Container(
              width: 33.w,
              height: 37.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/instagram.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(267.w, 230.h),
            child:
                // Adobe XD layer: 'youtube' (shape)
                Container(
              width: 31.w,
              height: 36.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/youtube.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(345.w, 240.h),
            child:
                // Adobe XD layer: 'rightarrow' (shape)
                Container(
              width: 13.w,
              height: 16.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/rightarrow.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1.w, 288.h),
            child: SvgPicture.string(
              _svg_norb3f,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(83.w, 473.h),
            child:
                // Adobe XD layer: 'line' (shape)
                Container(
              width: 24.w,
              height: 23.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/line.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(285.w, 475.h),
            child:
                // Adobe XD layer: 'love' (shape)
                Container(
              width: 28.w,
              height: 27.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/love.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(77.w, 499.h),
            child: SvgPicture.string(
              _svg_rkhaec,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(1.w, 510.h),
            child:
                // Adobe XD layer: 'patch' (shape)
                Container(
              width: 121.w,
              height: 162.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/patch.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1.w, 672.h),
            child:
                // Adobe XD layer: 'patch' (shape)
                Container(
              width: 121.w,
              height: 162.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/patch.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(126.w, 510.h),
            child:
                // Adobe XD layer: 'patch' (shape)
                Container(
              width: 122.w,
              height: 162.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/patch.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(125.w, 672.h),
            child:
                // Adobe XD layer: 'patch' (shape)
                Container(
              width: 122.w,
              height: 162.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/patch.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(251.w, 510.h),
            child:
                // Adobe XD layer: 'patch' (shape)
                Container(
              width: 125.w,
              height: 166.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/patch.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(251.w, 672.h),
            child:
                // Adobe XD layer: 'patch' (shape)
                Container(
              width: 125.w,
              height: 166.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/patch.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.w, 640.h),
            child: Text(
              '88',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(153.w, 640.h),
            child: Text(
              '88',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(279.w, 638.h),
            child: Text(
              '88',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(-9.w, 613.h),
            child:
                // Adobe XD layer: 'Untitled-2 copy' (shape)
                Container(
              width: 62.w,
              height: 77.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Untitled-2 copy.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(104.w, 613.h),
            child:
                // Adobe XD layer: 'Untitled-2 copy' (shape)
                Container(
              width: 62.w,
              height: 77.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Untitled-2 copy.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(232.w, 612.h),
            child:
                // Adobe XD layer: 'Untitled-2 copy' (shape)
                Container(
              width: 62.w,
              height: 77.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Untitled-2 copy.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.w, 744.h),
            child: Container(
              width: 375.w,
              height: 68.h,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(21.w, 755.h),
            child:
                // Adobe XD layer: 'home' (shape)
                Container(
              width: 34.w,
              height: 30.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/home.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(92.w, 757.h),
            child:
                // Adobe XD layer: 'search' (shape)
                Container(
              width: 31.w,
              height: 27.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/search.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(161.w, 760.h),
            child:
                // Adobe XD layer: 'plus' (shape)
                Container(
              width: 60.w,
              height: 41.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/plus.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(258.w, 754.h),
            child:
                // Adobe XD layer: 'comment' (shape)
                Container(
              width: 36.w,
              height: 32.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/comment.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(23.w, 787.h),
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff8c8787),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(86.w, 788.h),
            child: Text(
              'Discover',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff8c8787),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(261.w, 788.h),
            child: Text(
              'Index',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff8c8787),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(329.w, 788.h),
            child: Text(
              'Me',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff8c8787),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(322.w, 757.h),
            child:
                // Adobe XD layer: 'userblock' (shape)
                Container(
              width: 32.w,
              height: 28.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/userblock.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_norb3f =
    '<svg viewBox="0.5 288.5 375.0 165.0" ><path transform="translate(0.5, 288.5)" d="M 0 0 L 375 2" fill="none" stroke="#b4aaaa" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.5, 451.5)" d="M 0 0 L 375 2" fill="none" stroke="#b4aaaa" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rkhaec =
    '<svg viewBox="77.5 499.5 35.0 1.0" ><path transform="translate(77.5, 499.5)" d="M 0 0 L 35 0" fill="none" stroke="#000000" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
