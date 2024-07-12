import 'package:flutter/material.dart';
import 'package:hcc_detector/core/constant.dart';
import 'package:hcc_detector/hcc_detector/data/models/welcomeModels.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/Learn.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/OurTechnology.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/Scan.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/appbarcomp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/drawercomp.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentIndex = 0;
  late PageController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> buttonNames = ['LEARN', 'SCAN', 'OurTeachnology'];
  final List<Widget> pages = [LearnPage(), ScanPage(), OurTechnologyPage()];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: drwercomp(scaffoldKey: _scaffoldKey,
        onTaphome: () {
        
      },
        onTapscan: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScanPage(),
            ),
          );
        },
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
                  child: AppbarComponent(scaffoldKey: _scaffoldKey),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth * 0.05),
                    child: Stack(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  contents.length,
                                  (index) =>
                                      buildDot(index, context, constraints),
                                ),
                              ),
                              Expanded(
                                child: PageView.builder(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  controller: _controller,
                                  itemCount: contents.length,
                                  onPageChanged: (int index) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                  itemBuilder: (_, i) {
                                    return Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: FractionallySizedBox(
                                            widthFactor: 0.7,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                top: constraints.maxHeight *
                                                    0.33,
                                                left: constraints.maxWidth * 0,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      contents[i]
                                                          .title
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: constraints
                                                                .maxWidth *
                                                            0.018,
                                                        color: textTitlecolor,
                                                      )),
                                                  Text(
                                                    contents[i]
                                                        .discription
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize:
                                                          constraints.maxWidth *
                                                              0.017,
                                                      color: textdecColor,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        // التنقل إلى الصفحة المرتبطة بالزر الحالي
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    pages[i],
                                                          ),
                                                        );
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape: BeveledRectangleBorder(
                                                            side: BorderSide(
                                                                color:
                                                                    textTitlecolor)),
                                                        fixedSize: Size(
                                                            constraints
                                                                    .maxWidth *
                                                                0.12,
                                                            constraints
                                                                    .maxHeight *
                                                                0.03),
                                                      ),
                                                      child: Text(
                                                        buttonNames[i],
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: constraints
                                                                  .maxWidth *
                                                              0.010,
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
                                        Positioned(
                                          right: -220,
                                          bottom: -170,
                                          child: ConstrainedBox(
                                            constraints: BoxConstraints(
                                              maxHeight: double.infinity,
                                              maxWidth: 650,
                                            ),
                                            child: Image.asset(
                                              "${contents[i].image}",
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: constraints.maxHeight * 0.03,
                          child: Column(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_circle_up_outlined,
                                  color: textTitlecolor,
                                  size: constraints.maxWidth * 0.027,
                                ),
                                onPressed: () {
                                  if (currentIndex > 0) {
                                    _controller.previousPage(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.bounceInOut,
                                    );
                                  }
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_circle_down_rounded,
                                  color: textTitlecolor,
                                  size: constraints.maxWidth * 0.027,
                                ),
                                onPressed: () {
                                  if (currentIndex < contents.length - 1) {
                                    _controller.nextPage(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.bounceInOut,
                                    );
                                  }
                                },
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

  Container buildDot(
      int index, BuildContext context, BoxConstraints constraints) {
    return Container(
      height: constraints.maxWidth * 0.015,
      width: constraints.maxWidth * 0.015,
      margin: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.01),
      decoration: BoxDecoration(
        border: Border.all(color: textTitlecolor),
        borderRadius: BorderRadius.circular(constraints.maxWidth * 0.015),
        color: currentIndex == index ? textTitlecolor : Colors.white,
      ),
    );
  }
}
