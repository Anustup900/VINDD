import 'package:TikTokBharat/Inbox/Inbox.dart';
import 'package:TikTokBharat/home.dart';
import 'package:TikTokBharat/profile/Profile.dart';
import 'package:TikTokBharat/resources/assets.dart';
import 'package:TikTokBharat/resources/dimen.dart';
import 'package:TikTokBharat/search/SearchClick.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Searched extends StatefulWidget {
  @override
  _SearchedState createState() => _SearchedState();
}

class _SearchedState extends State<Searched> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: FlatButton(
          //   onPressed: () {
          //     showSearch(
          //       context: context,
          //       delegate: CustomSearchDelegate(),
          //     );
          //   },
            title: Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: ListTile(
                  leading: InkWell(
                    child: Icon(
                      AppIcons.search,
                      color: Colors.grey,
                      size: 17,
                    ),
                    // onTap: () {
                    //   Navigator.pop(context);
                    // },
                  ),
                  title: Container(
                    transform: Matrix4.translationValues(-19.0, 0.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    // child: Text(
                    //   'Search',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ),
                ),
              ),
           // ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HashTag()),
                  );
                },
                child: SizedBox(
                  height: 180.h,
                  //  width: 300.0,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      AssetImage('assets/images/hastagbanner.png'),
                      AssetImage('assets/images/hastagbanner.png'),
                      AssetImage('assets/images/hastagbanner.png'),
                      AssetImage('assets/images/hastagbanner.png'),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/hastag1.png',
                  height: 60.h,
                  width: 60.w,
                ),
                title: Text(
                  'BiggestFan',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Trending Hashtag',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    '10.1M',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Aamir-Khan.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Aamir-Khan.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Aamir-Khan.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Aamir-Khan.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Aamir-Khan.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/hastag1.png',
                  height: 60.h,
                  width: 60.w,
                ),
                title: Text(
                  'NotTheOne',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Trending Hashtag',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    '126.1M',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Shah_Rukh.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Shah_Rukh.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Shah_Rukh.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Shah_Rukh.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/Shah_Rukh.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/hastag1.png',
                  height: 60.h,
                  width: 60.w,
                ),
                title: Text(
                  'FanArt',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Trending Hashtag',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    '16.B',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/pawan1.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/pawan1.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/pawan1.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/pawan1.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/pawan1.jpg',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/hastag1.png',
                  height: 60.h,
                  width: 60.w,
                ),
                title: Text(
                  'TikTikBharathFanFest',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Trending Hashtag',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    '126.1M',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/priya.png',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/priya.png',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/priya.png',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/priya.png',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                    Image.asset(
                      'assets/images/priya.png',
                      width: MediaQuery.of(context).size.width / 3.1,
                    ),
                    SizedBox(width: 3.w),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60.h,
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(
              //                    <--- top side
              color: Colors.grey,
              //width: 3.0,
            ),
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 8),
                color: Colors.white,
                child: InkWell(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        AppIcons.home,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(height: 3),
                      Padding(
                        padding: EdgeInsets.only(top: Dimen.textSpacing),
                        child: Text(
                          "Home",
                          style: TextStyle(
                              fontSize: Dimen.bottomNavigationTextSize,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Home(),
                    ));
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: InkWell(
                  //  onTap: () {
                  //       Navigator.pushReplacement(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => Searched()),
                  //       ) ;
                  //     },

                  // onTap: () {
                  //       Navigator.pushReplacement(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => LoginScreen()),
                  //       );
                  //     },
                  child: Column(
                    children: <Widget>[
                      Icon(
                        AppIcons.search,
                        color: Colors.black,
                        size: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Dimen.textSpacing),
                        child: Text(
                          "Discover",
                          style: TextStyle(
                              fontSize: Dimen.bottomNavigationTextSize,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: InkWell(
                  // onTap: () {
                  //   Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => CameraApp()),
                  //   );
                  // },
                  // onTap: () {
                  //           Navigator.pushReplacement(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => LoginScreen()),
                  //           );
                  //         },
                  child: Container(
                    // flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 45.0,
                            height: 32.0,
                            child: Stack(children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(
                                          Dimen.createButtonBorder))),
                              Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(
                                          Dimen.createButtonBorder))),
                              Center(
                                  child: Container(
                                height: double.infinity,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Dimen.createButtonBorder)),
                                child: Icon(
                                  Icons.add,
                                  size: 20.0,
                                ),
                              )),
                            ]))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Inbox()),
                    );
                  },
                  // onTap: () {
                  //         Navigator.pushReplacement(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => LoginScreen()),
                  //         );
                  //       },
                  child: Column(
                    children: <Widget>[
                      Icon(AppIcons.messages, color: Colors.grey, size: 20),
                      Padding(
                        padding: EdgeInsets.only(top: Dimen.textSpacing),
                        child: Text(
                          "Inbox",
                          style: TextStyle(
                              fontSize: Dimen.bottomNavigationTextSize,
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: InkWell(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => LoginScreen()),
                        //   );
                        // },
                        child: Icon(AppIcons.profile,
                            color: Colors.grey, size: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Dimen.textSpacing),
                        child: Text(
                          "Me",
                          style: TextStyle(
                              fontSize: Dimen.bottomNavigationTextSize,
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate {
//   //  ThemeData appBarTheme(BuildContext context) {
//   //   assert(context != null);
//   //   final ThemeData theme = Theme.of(context);
//   //   assert(theme != null);
//   //   return theme;
//   // }
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     if (query.length < 3) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Center(
//             child: Text(
//               "Search term must be longer than two letters.",
//             ),
//           )
//         ],
//       );
//     }

//     //Add the search term to the searchBloc.
//     //The Bloc will then handle the searching and add the results to the searchResults stream.
//     //This is the equivalent of submitting the search term to whatever search service you are using
//     // InheritedBlocs.of(context)
//     //     .searchBloc
//     //     .searchTerm
//     //     .add(query);

//     return Column(
//       children: <Widget>[
//         //Build the results based on the searchResults stream in the searchBloc
//         StreamBuilder(
//           //stream: InheritedBlocs.of(context).searchBloc.searchResults,
//           builder: (context, AsyncSnapshot<List<Result>> snapshot) {
//             if (!snapshot.hasData) {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Center(child: CircularProgressIndicator()),
//                 ],
//               );
//             } else if (snapshot.data.length == 0) {
//               return Column(
//                 children: <Widget>[
//                   Text(
//                     "No Results Found.",
//                   ),
//                 ],
//               );
//             } else {
//               var results = snapshot.data;
//               return ListView.builder(
//                 itemCount: results.length,
//                 itemBuilder: (context, index) {
//                   var result = results[index];
//                   return ListTile(
//                     title: Text('wefgr '),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ],
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // This method is called everytime the search term changes.
//     // If you want to add search suggestions as the user enters their search term, this is the place to do that.
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           NestedTabBar(),
//         ],
//       ),
//     );
//   }
// }

// class Result {}

// class NestedTabBar extends StatefulWidget {
//   @override
//   _NestedTabBarState createState() => _NestedTabBarState();
// }

// class _NestedTabBarState extends State<NestedTabBar>
//     with TickerProviderStateMixin {
//   TabController _nestedTabController;

//   @override
//   void initState() {
//     super.initState();
//     initPlayer();

//     _nestedTabController = new TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _nestedTabController.dispose();
//   }

//   bool _isPlaying = false;
//   // audioCache.play('disco.mp3')

//   Duration _duration = new Duration();
//   Duration _position = new Duration();
//   AudioPlayer advancedPlayer;
//   AudioCache audioCache;

//   void initPlayer() {
//     advancedPlayer = new AudioPlayer();
//     audioCache = new AudioCache(fixedPlayer: advancedPlayer);

//     advancedPlayer.durationHandler = (d) => setState(() {
//           _duration = d;
//         });

//     advancedPlayer.positionHandler = (p) => setState(() {
//           _position = p;
//         });
//   }

//   String localFilePath;

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(13.0),
//           child: TabBar(
//             controller: _nestedTabController,
//             indicatorColor: Colors.teal,
//             labelColor: Colors.teal,
//             unselectedLabelColor: Colors.black54,
//             isScrollable: true,
//             tabs: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: Text(
//                       'Trending',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: Text(
//                       'Memory Card',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           height: screenHeight * 0.77,
//           // margin: EdgeInsets.only(left: 16.0, right: 16.0),
//           child: TabBarView(
//             controller: _nestedTabController,
//             children: <Widget>[
//               Container(
//                 child: Column(children: <Widget>[
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image:
//                                 const AssetImage('assets/images/Shah_Rukh.jpg'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                         child: IconButton(
//                           iconSize: 20,
//                           onPressed: () {
//                             setState(() {
//                               _isPlaying = !_isPlaying;
//                               audioCache.play('disco.mp3');
//                               print('wfdfddf');
//                             });
//                           },
//                           icon: Icon(
//                             _isPlaying
//                                 ? FontAwesomeIcons.pause
//                                 : FontAwesomeIcons.play,
//                             color: Color(0xFF5E35B1),
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'chennai Express',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         '2014',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image:
//                                 const AssetImage('assets/images/Shah_Rukh.jpg'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'chennai Express',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         '2014',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image:
//                                 const AssetImage('assets/images/Shah_Rukh.jpg'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'chennai Express',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         '2014',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image:
//                                 const AssetImage('assets/images/Shah_Rukh.jpg'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'chennai Express',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         '2014',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image:
//                                 const AssetImage('assets/images/Shah_Rukh.jpg'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'chennai Express',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         '2014',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image:
//                                 const AssetImage('assets/images/Shah_Rukh.jpg'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'chennai Express',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         '2014',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   )
//                 ]),
//               ),
//               Container(
//                 child: Column(children: <Widget>[
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: const AssetImage('assets/images/patch.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'AUD-2020342-WA002.mp3',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         'Unknown Artist',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: const AssetImage('assets/images/patch.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'AUD-2020342-WA002.mp3',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         'Unknown Artist',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: const AssetImage('assets/images/patch.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'AUD-2020342-WA002.mp3',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         'Unknown Artist',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: const AssetImage('assets/images/patch.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'AUD-2020342-WA002.mp3',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         'Unknown Artist',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: const AssetImage('assets/images/patch.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'AUD-2020342-WA002.mp3',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         'Unknown Artist',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     //        onTap: () {
//                     //   Navigator.pushReplacement(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => HashTag()),
//                     //   );
//                     // },
//                     child: ListTile(
//                       leading: Container(
//                         height: 110.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: const AssetImage('assets/images/patch.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       title: Text(
//                         'AUD-2020342-WA002.mp3',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Text(
//                         'Unknown Artist',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       trailing: Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.grey,
//                         size: 24,
//                       ),
//                     ),
//                   )
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
