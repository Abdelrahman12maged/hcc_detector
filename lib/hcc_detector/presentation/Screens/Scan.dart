
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:hcc_detector/core/constant.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Screens/Learn.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Screens/OurTechnology.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Screens/ResultPage.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Screens/component/appbarcomp.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Screens/component/drawercomp.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Screens/welcome.dart';
// import 'package:image_picker/image_picker.dart';

// class ScanPage extends StatefulWidget {
//   const ScanPage({super.key});

//   @override
//   State<ScanPage> createState() => _ScanPageState();
// }

// class _ScanPageState extends State<ScanPage> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final picker = ImagePicker();
//   List<File?> _images = [null, null, null];

//   Future<void> getImage(int index) async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedFile != null) {
//         _images[index] = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       endDrawer: drwercomp(
//         scaffoldKey: _scaffoldKey,
//         onTaphome: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const Welcome(),
//             ),
//           );
//         },
//         onTapscan: () {},
//         onTaptecho: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => OurTechnologyPage(),
//             ),
//           );
//         },
//         onTaplearn: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => LearnPage(),
//             ),
//           );
//         },
//       ),
//       key: _scaffoldKey,
//       backgroundColor: backgroundColor,
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             return Column(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: constraints.maxHeight * 0.15,
//                   padding: EdgeInsets.symmetric(
//                       horizontal: constraints.maxWidth * 0.03),
//                   child: AppbarComponent(
//                     scaffoldKey: _scaffoldKey,
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: constraints.maxWidth * 0.05),
//                     child: Stack(
//                       children: [
//                         Container(
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Stack(
//                                   children: [
//                                     ListView(
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.topLeft,
//                                           child: FractionallySizedBox(
//                                             widthFactor: 0.7,
//                                             child: Container(
//                                               padding: EdgeInsets.only(
//                                                 top: constraints.maxHeight *
//                                                     0.10,
//                                                 left: constraints.maxWidth * 0,
//                                               ),
//                                               child: Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     "UPLOAD CT IMAGES TO SCAN",
//                                                     style: TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       fontSize:
//                                                           constraints.maxWidth *
//                                                               0.018,
//                                                       color: textTitlecolor,
//                                                     ),
//                                                   ),
//                                                   for (int i = 0; i < 3; i++)
//                                                     Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets.only(
//                                                                   top: 10),
//                                                           child: ElevatedButton(
//                                                             onPressed: () async {
//                                                               await getImage(i);
//                                                               print(_images[i]);
//                                                             },
//                                                             style:
//                                                                 ElevatedButton
//                                                                     .styleFrom(
//                                                               shape: ContinuousRectangleBorder(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               21),
//                                                                   side: const BorderSide(
//                                                                       color:
//                                                                           textTitlecolor)),
//                                                               fixedSize: Size(
//                                                                   constraints
//                                                                           .maxWidth *
//                                                                       0.18,
//                                                                   constraints
//                                                                           .maxHeight *
//                                                                       0.03),
//                                                             ),
//                                                             child: Row(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .spaceEvenly,
//                                                               children: [
//                                                                 Text(
//                                                                   "UPLOAD IMAGE ${i + 1}",
//                                                                   style: TextStyle(
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .bold,
//                                                                     fontSize: constraints
//                                                                             .maxWidth *
//                                                                         0.012,
//                                                                     color:
//                                                                         textTitlecolor,
//                                                                   ),
//                                                                 ),
//                                                                 Icon(
//                                                                   Icons
//                                                                       .add_box_outlined,
//                                                                   color:
//                                                                       textTitlecolor,
//                                                                   size: constraints
//                                                                           .maxWidth *
//                                                                       0.020,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         if (_images[i] != null)
//                                                           Padding(
//                                                             padding: const EdgeInsets.only(top: 8.0),
//                                                             child: Row(
//                                                               children: [
//                                                                 Expanded(
//                                                                   child: Text(
//                                                                     _images[i]!
//                                                                         .path,
//                                                                     style: const TextStyle(
//                                                                         color: Colors
//                                                                             .red,
//                                                                         fontWeight:
//                                                                             FontWeight.bold),
//                                                                   ),
//                                                                 ),
//                                                                 const Icon(
//                                                                   Icons
//                                                                       .check_circle,
//                                                                   color: Colors
//                                                                       .green,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                       ],
//                                                     ),
//                                                   Padding(
//                                                     padding:
//                                                         const EdgeInsets.only(
//                                                             top: 10),
//                                                     child: Text(
//                                                       "Scan to show result and report the case of the liver",
//                                                       style: TextStyle(
//                                                         fontSize: constraints
//                                                                 .maxWidth *
//                                                             0.017,
//                                                         color: textdecColor,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                         const EdgeInsets.only(
//                                                             top: 20),
//                                                     child: ElevatedButton(
//                                                       onPressed: () {
//                                                         if (_images.every(
//                                                             (image) =>
//                                                                 image != null)) {
//                                                           Navigator.push(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                               builder: (context) =>
//                                                                   ResultPage(
//                                                                 images: _images,
//                                                               ),
//                                                             ),
//                                                           );
//                                                         } else {
//                                                           showDialog(
//                                                             context: context,
//                                                             builder: (context) {
//                                                               return AlertDialog(
//                                                                 content: Text(
//                                                                     "Please add all CT images first",
//                                                                     style: TextStyle(
//                                                                         color: Colors
//                                                                             .red,
//                                                                         fontSize:
//                                                                             25)),
//                                                                 actions: [
//                                                                   Center(
//                                                                     child: IconButton(
//                                                                         onPressed: () {
//                                                                           Navigator.pop(
//                                                                               context);
//                                                                         },
//                                                                         icon: Icon(
//                                                                             Icons.close)),
//                                                                   )
//                                                                 ],
//                                                                 alignment:
//                                                                     Alignment
//                                                                         .topCenter,
//                                                               );
//                                                             },
//                                                           );
//                                                         }
//                                                       },
//                                                       style:
//                                                           ElevatedButton.styleFrom(
//                                                         shape: ContinuousRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         21),
//                                                             side: const BorderSide(
//                                                                 color:
//                                                                     textTitlecolor)),
//                                                         fixedSize: Size(
//                                                             constraints
//                                                                     .maxWidth *
//                                                                 0.13,
//                                                             constraints
//                                                                     .maxHeight *
//                                                                 0.03),
//                                                       ),
//                                                       child: Text(
//                                                         "SCAN",
//                                                         style: TextStyle(
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                           fontSize:
//                                                               constraints.maxWidth *
//                                                                   0.012,
//                                                           color: textTitlecolor,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Positioned(
//                                       right: -220,
//                                       bottom: -170,
//                                       child: ConstrainedBox(
//                                         constraints: BoxConstraints(
//                                           maxHeight: constraints.maxHeight,
//                                           maxWidth: constraints.maxWidth,
//                                         ),
//                                         child: Image.asset(
//                                           "images/scanim.png",
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Positioned(
//                           left: 0,
//                           bottom: constraints.maxHeight * 0.03,
//                           child: Row(
//                             children: [
//                               IconButton(
//                                 icon: Icon(
//                                   Icons.arrow_circle_left_outlined,
//                                   color: textTitlecolor,
//                                   size: constraints.maxWidth * 0.027,
//                                 ),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                               ),
//                               Text(
//                                 "back",
//                                 style: TextStyle(
//                                     color: textTitlecolor,
//                                     fontSize: constraints.maxWidth * 0.015),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hcc_detector/core/constant.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/Learn.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/OurTechnology.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/ResultPage.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/appbarcomp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/drawercomp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/welcome.dart';
import 'package:image_picker/image_picker.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final picker = ImagePicker();
  List<File?> _images = [null, null, null];

  Future<void> getImage(int index) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _images[index] = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drwercomp(
        scaffoldKey: _scaffoldKey,
        onTaphome: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Welcome(),
            ),
          );
        },
        onTapscan: () {},
        onTaptecho: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OurTechnologyPage(),
            ),
          );
        },
        onTaplearn: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LearnPage(),
            ),
          );
        },
      ),
      key: _scaffoldKey,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: constraints.maxHeight * 0.15,
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.03),
                  child: AppbarComponent(
                    scaffoldKey: _scaffoldKey,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth * 0.05),
                    child: Stack(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: FractionallySizedBox(
                                            widthFactor: 0.7,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                top: constraints.maxHeight *
                                                    0.20,
                                                left: constraints.maxWidth * 0,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "UPLOAD CT IMAGES TO SCAN",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          constraints.maxWidth *
                                                              0.018,
                                                      color: textTitlecolor,
                                                    ),
                                                  ),
                                                  for (int i = 0; i < 3; i++)
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 10),
                                                          child: ElevatedButton(
                                                            onPressed: () async {
                                                              await getImage(i);
                                                              print(_images[i]);
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              shape: ContinuousRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              21),
                                                                  side: const BorderSide(
                                                                      color:
                                                                          textTitlecolor)),
                                                              fixedSize: Size(
                                                                  constraints
                                                                          .maxWidth *
                                                                      0.18,
                                                                  constraints
                                                                          .maxHeight *
                                                                      0.03),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Text(
                                                                  ["Arterial ", "Portovenus", "Delayed"][i],
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: constraints
                                                                            .maxWidth *
                                                                        0.012,
                                                                    color:
                                                                        textTitlecolor,
                                                                  ),
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .add_box_outlined,
                                                                  color:
                                                                      textTitlecolor,
                                                                  size: constraints
                                                                          .maxWidth *
                                                                      0.020,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        if (_images[i] != null)
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    _images[i]!
                                                                        .path,
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                                const Icon(
                                                                  Icons
                                                                      .check_circle,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Text(
                                                      "Scan to show result and report the case of the liver",
                                                      style: TextStyle(
                                                        fontSize: constraints
                                                                .maxWidth *
                                                            0.017,
                                                        color: textdecColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        if (_images.every(
                                                            (image) =>
                                                                image != null)) {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  ResultPage(
                                                                images: _images,
                                                              ),
                                                            ),
                                                          );
                                                        } else {
                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return AlertDialog(
                                                                content: Text(
                                                                    "Please add all CT images first",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                            25)),
                                                                actions: [
                                                                  Center(
                                                                    child: IconButton(
                                                                        onPressed: () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        icon: Icon(
                                                                            Icons.close)),
                                                                  )
                                                                ],
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                              );
                                                            },
                                                          );
                                                        }
                                                      },
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        shape: ContinuousRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        21),
                                                            side: const BorderSide(
                                                                color:
                                                                    textTitlecolor)),
                                                        fixedSize: Size(
                                                            constraints
                                                                    .maxWidth *
                                                                0.13,
                                                            constraints
                                                                    .maxHeight *
                                                                0.03),
                                                      ),
                                                      child: Text(
                                                        "SCAN",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              constraints.maxWidth *
                                                                  0.012,
                                                          color: textTitlecolor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      right: -220,
                                      bottom: -170,
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: constraints.maxHeight,
                                          maxWidth: constraints.maxWidth,
                                        ),
                                        child: Image.asset(
                                          "images/scanim.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: constraints.maxHeight * 0.03,
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color: textTitlecolor,
                                  size: constraints.maxWidth * 0.027,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Text(
                                "back",
                                style: TextStyle(
                                    color: textTitlecolor,
                                    fontSize: constraints.maxWidth * 0.015),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
