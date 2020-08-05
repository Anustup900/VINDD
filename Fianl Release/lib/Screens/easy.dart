// /*

// Author: Tejaswi.U
// Team: Flutter

// Created On:3-Nov-2019

// Purpose of file: uI and working of lykes,comments,share and coins of a promo. 

// Last Modified Date:20-Nov-2019

// Modified by: Satya

// Modified for: add the invisible option for a promo and lyke option


// */

// // import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:connectivity/connectivity.dart';
// import 'package:connectivity/connectivity.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:esys_flutter_share/esys_flutter_share.dart';

//  //import 'package:search/future/invisible_future.dart';

// // import 'package:search/future/latest_future.dart';
// // import 'package:search/main.dart';

// //import 'package:search/model/latest_post_model.dart';

//  import 'package:shared_preferences/shared_preferences.dart';
//  import 'package:toast/toast.dart';

// //  import 'chiewer_list.dart';
// // import 'constants.dart';

// class BuildListview extends StatelessWidget {
//   const BuildListview({
//     Key key,
//     @required this.list,
//   }) : super(key: key);

//   final list;

//   @override
//   Widget build(BuildContext context) {
//     return (list.length == 0)
//         ? noPost
//         : ListView.builder(
//             itemCount: list.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Post(listtile: list[index]);
//             });
//   }
// }

// // this class is used to view the promos in a list along with like,comments,share and coins buttons.
// class Post extends StatefulWidget {
//   Post({Key key, this.listtile}) : super(key: key);
//   final Datum listtile;

//   @override
//   _PostState createState() => _PostState();
// }

// class _PostState extends State<Post> {
//   bool isCardInvisible = false;
//   @override
//   Widget build(BuildContext context) {
  
//     // var coins = double.parse(widget.listtile.coins).toStringAsFixed(2);
//     return isCardInvisible
//         ? SizedBox(
//             height: 0,
//             width: 0,
//           )
//         :
        
//         Container(
//             child: Column(
//               children: <Widget>[
//                 Card(
//                     margin: const EdgeInsets.only(top: 5.0),
//                     child: Column(
//                       children: <Widget>[
//                         (widget.listtile.videoLink=="NULL"||widget.listtile.videoLink=='')?
//                         GestureDetector(
//                           onTap: () async {
//                             var connectivityResult =
//                                 await (Connectivity().checkConnectivity());
//                             if (connectivityResult ==
//                                     ConnectivityResult.mobile ||
//                                 connectivityResult == ConnectivityResult.wifi) {
//                               Navigator.pushNamed(
//                                context, './ui/display_promo',
//                               arguments: widget.listtile.path
//                               );
//                             } else {
//                               print("no-conn");

//                               Scaffold.of(context).showSnackBar(SnackBar(
//                                 content: Text(
//                                     "Please check your Internet Connection"),
//                                 duration: Duration(seconds: 3),
//                               ));
//                             }
//                           },
//                           onDoubleTap: () async {
//                             var connectivityResult =
//                                 await (Connectivity().checkConnectivity());
//                             if (connectivityResult ==
//                                     ConnectivityResult.mobile ||
//                                 connectivityResult == ConnectivityResult.wifi) {
//                               liked(widget.listtile.promoId).then((response) {
//                                 if (response.status == 'True') {
//                                   setState(() {
//                                     widget.listtile.byHim = '1';
//                                     var likes = int.parse(widget.listtile.lc);
//                                     likes++;

//                                     widget.listtile.lc = likes.toString();
//                                     isCardInvisible = true;
//                                     Toast.show("you lyked a promo",context,duration: Toast.LENGTH_LONG);
//                                   });
//                                 }
//                               });
//                             } else {
//                               print("no-conn");

//                               Scaffold.of(context).showSnackBar(SnackBar(
//                                 content: Text(
//                                     "Please check your Internet Connection"),
//                                 duration: Duration(seconds: 3),
//                               ));
//                             }
//                           },
//                           child: Container(
//                               height: 250,
//                               width: 410,
//                               child: CachedNetworkImage(
//                                 imageUrl: widget.listtile.path,
//                                 placeholder: (context, uri) =>
//                                     Image.asset("assets/images/loader.gif"),
//                                 errorWidget: (context, uri, error) => Icon(
//                                   Icons.broken_image,
//                                   color: Colors.grey,
//                                   size: 50,
//                                 ),
//                                 fit: BoxFit.cover,
//                                 filterQuality: FilterQuality.none),
//                           ),
//                         )
                        
//                        :
//                        GestureDetector(
//                           onTap: () async {
//                             var connectivityResult =
//                                 await (Connectivity().checkConnectivity());
//                             if (connectivityResult ==
//                                     ConnectivityResult.mobile ||
//                                 connectivityResult == ConnectivityResult.wifi) {
//                               Navigator.push(
//                                 context,
//                               MaterialPageRoute(
//         builder: (BuildContext context) =>
//          ChewieDemo(link:widget.listtile.videoLink)
//                               ));
//                             } else {
//                               print("no-conn");

//                               Scaffold.of(context).showSnackBar(SnackBar(
//                                 content: Text(
//                                     "Please check your Internet Connection"),
//                                 duration: Duration(seconds: 3),
//                               ));
//                             }
//                           },
//                           onDoubleTap: () async {
//                             var connectivityResult =
//                                 await (Connectivity().checkConnectivity());
//                             if (connectivityResult ==
//                                     ConnectivityResult.mobile ||
//                                 connectivityResult == ConnectivityResult.wifi) {
//                               liked(widget.listtile.promoId).then((response) {
//                                 if (response.status == 'True') {
//                                   setState(() {
//                                     widget.listtile.byHim = '1';
//                                     var likes = int.parse(widget.listtile.lc);
//                                     likes++;

//                                     widget.listtile.lc = likes.toString();
//                                     isCardInvisible = true;
//                                     Toast.show("you lyked a promo",context,duration: Toast.LENGTH_LONG);
//                                   });
//                                 }
//                               });
//                             } else {
//                               print("no-conn");

//                               Scaffold.of(context).showSnackBar(SnackBar(
//                                 content: Text(
//                                     "Please check your Internet Connection"),
//                                 duration: Duration(seconds: 3),
//                               ));
//                             }
//                           },
//                           child: Container(
//                             height: 250,
//                             width: 410,
//                             child: Stack(
//                               children: <Widget>[
//                                 Image.network(widget.listtile.path,
//                                     fit: BoxFit.cover,
//                                     filterQuality: FilterQuality.none),
//                                     Positioned(

                                      
//                                       child: Container(
//                                       alignment: Alignment.center,
                                       
//                                           child:Icon(Icons.play_circle_outline,size: 150,color: Colors.white,),
                                       
//                                       ),
//                                     )
//                               ],
//                             ),
//                           ),
//                         )
//                         ,
                         

//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             MaterialButton(
//                           onPressed: () {},
//                               child: (widget.listtile.byHim == '1')
//                                   ? Padding(
//                                       child: IconButton(
//                                         icon: Icon(
//                                           Icons.favorite,
//                                           color: Colors.red,
//                                           size:30,
//                                         ),
//                                         onPressed: () async {
//                                           var connectivityResult =
//                                               await (Connectivity()
//                                                   .checkConnectivity());
//                                           if (connectivityResult ==
//                                                   ConnectivityResult.mobile ||
//                                               connectivityResult ==
//                                                   ConnectivityResult.wifi) {
//                                             setState(() {
//                                               unliked(widget.listtile.promoId);
//                                               widget.listtile.byHim = '0';
//                                               var likes =
//                                                   int.parse(widget.listtile.lc);
//                                               likes--;
//                                               widget.listtile.lc =
//                                                   likes.toString();
//                                             });
//                                           } else {
//                                             print("no-conn");

//                                             Scaffold.of(context)
//                                                 .showSnackBar(SnackBar(
//                                               content: Text(
//                                                   "Please check your Internet Connection"),
//                                               duration: Duration(seconds: 3),
//                                             ));
//                                           }
//                                         },
//                                       ),
//                                       padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                                     )
//                                   :
//                                   IconButton(
//                                       icon:
//                                   Icon(
//                                       Icons.favorite_border,
//                                       size: 30,
//                                     ),
//                               onPressed: () async {
//                                 var connectivityResult =
//                                     await (Connectivity()
//                                         .checkConnectivity());
//                                 if (connectivityResult ==
//                                         ConnectivityResult.mobile ||
//                                     connectivityResult ==
//                                         ConnectivityResult.wifi) {
//                                   liked(widget.listtile.promoId);
//                                   setState(() {
//                                     widget.listtile.byHim = '1';
//                                     var likes =
//                                         int.parse(widget.listtile.lc);
//                                     likes++;
//                                     widget.listtile.lc = likes.toString();
//                                     isCardInvisible=true;
//                                     Toast.show("you lyked a promo",context,duration: Toast.LENGTH_LONG);
//                                   });
//                                 } else {
//                                   print("no-conn");

//                                   Scaffold.of(context)
//                                       .showSnackBar(SnackBar(
//                                     content: Text(
//                                         "Please check your Internet Connection"),
//                                     duration: Duration(seconds: 3),
//                                   ));
//                                 }
//                               },
//                               ),
//                             ),
//                             MaterialButton(
//                                 minWidth: 15,
//                                 onPressed: () async {
//                                   var connectivityResult = await (Connectivity()
//                                       .checkConnectivity());
//                                   if (connectivityResult ==
//                                           ConnectivityResult.mobile ||
//                                       connectivityResult ==
//                                           ConnectivityResult.wifi) {
//                                     showDialog(
//                                         context: context,
//                                         builder: (ctxt) => new AlertDialog(
//                                               title: Text(
//                                                   widget.listtile.category),
//                                               content: Row(
//                                                 children: <Widget>[
//                                                   Text("Website:"),
//                                                   Expanded(
//                                                       child: Text(widget
//                                                           .listtile.link)),
//                                                 ],
//                                               ),
//                                             ));
//                                   } else {
//                                     print("no-conn");

//                                     Scaffold.of(context).showSnackBar(SnackBar(
//                                       content: Text(
//                                           "Please check your Internet Connection"),
//                                       duration: Duration(seconds: 3),
//                                     ));
//                                   }
//                                 },
//                                 child: Icon(
//                                   Icons.info_outline,
//                                   size: 35,
//                                   color: Color(0xFF002A60),
//                                 )),
//                           ],
//                         ),
//                         //   ],
//                         // ),

                        
//                         Wrap(
//                           children: <Widget>[
//                             ListTile(
//                               leading: CircleAvatar(
//                                 child: Text(widget.listtile.name[0].toUpperCase()),
//                                 radius: 20,
//                               ),
//                               title: Text(
//                                 "${widget.listtile.description}",
//                                 style: TextStyle(
//                                     fontSize: 20, color: Color(0xFF002A60)),
//                               ),
//                               subtitle: Row(
//                                 children: <Widget>[
//                                   GestureDetector(
//                                     child: Text(
//                                         widget.listtile.lc + " lykes  || ",
//                                         style: TextStyle(
//                                             color: Color(0xFF002A60),
//                                             fontSize: 15)),
//                                     onTap: () async {
//                                       var connectivityResult =
//                                           await (Connectivity()
//                                               .checkConnectivity());
//                                       if (connectivityResult ==
//                                               ConnectivityResult.mobile ||
//                                           connectivityResult ==
//                                               ConnectivityResult.wifi) {
//                                         promoId = widget.listtile.promoId;
//                                         Navigator.pushNamed(
//                                           context,
//                                           './ui/lyked_by_screen',
//                                         );
//                                       } else {
//                                         print("no-conn");

//                                         Scaffold.of(context)
//                                             .showSnackBar(SnackBar(
//                                           content: Text(
//                                               "Please check your Internet Connection"),
//                                           duration: Duration(seconds: 3),
//                                         ));
//                                       }
//                                     },
//                                   ),
//                                   // Text(
//                                   //   coins + " coins",
//                                   //   style: TextStyle(
//                                   //       color: Color(0xFF002A60), fontSize: 15),
//                                   // ),
//                                 ],
//                               ),
//                               trailing: PopupMenuButton(
//                                   onSelected: (String item) async {
//                                 var connectivityResult =
//                                     await (Connectivity().checkConnectivity());
//                                 if (connectivityResult ==
//                                         ConnectivityResult.mobile ||
//                                     connectivityResult ==
//                                         ConnectivityResult.wifi) {
//                                   (item == "share")
//                                       ? sharePromo(
//                                           context,
//                                           widget.listtile.path,
//                                           widget.listtile.category,
//                                           widget.listtile.link)
//                                       : invisible(widget.listtile.promoId)
//                                           .then((response) {
//                                           setState(() {
//                                             isCardInvisible = true;
//                                           });
//                                         });
//                                 } else {
//                                   print("no-conn");

//                                   Scaffold.of(context).showSnackBar(SnackBar(
//                                     content: Text(
//                                         "Please check your Internet Connection"),
//                                     duration: Duration(seconds: 3),
//                                   ));
//                                 }
//                               }, itemBuilder: (BuildContext context) {
//                                 return [
//                                   new PopupMenuItem(
//                                       value: "invisible",
//                                       child: new Text("Invisible")),
//                                   new PopupMenuItem(
//                                       value: "share", child: new Text("share"))
//                                 ];
//                               }),
//                             ),
//                           ],
//                         ),
//                       ],
//                     )),
//               ],
//             ),
//           );
//   }

// // the purpose of this method is used to share a promo.
//   sharePromo(BuildContext context, String imagelink, String category,
//       String link) async {
//     var playstorelink =
//         'https://play.google.com/store/apps/details?id=com.cadrac.NoizeUp';
//     var appstorelink = "https://testflight.apple.com/join/sFkrbpxk";

//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     print(sharedPreferences);
//     var referalcode = sharedPreferences.getString("referalCode");
//     var request = await HttpClient().getUrl(Uri.parse(imagelink));
//     var response = await request.close();
//     Uint8List bytes = await consolidateHttpClientResponseBytes(response);
//     await Share.file('Share Promo', '$category.jpeg', bytes, 'image/jpg',
//         text:
//             "Refer here\n$link\nDownload NoizeUp App with my referal code $referalcode here:\nFor IOS:\n$appstorelink\nFor Android:\n$playstorelink");
//   }
  
// }