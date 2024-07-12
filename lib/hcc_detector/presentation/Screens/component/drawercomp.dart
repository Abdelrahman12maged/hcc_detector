
import 'package:flutter/material.dart';
import 'package:hcc_detector/core/constant.dart';

class drwercomp extends StatelessWidget {
  Function()? onTaphome;
  Function()? onTapscan;
  Function()? onTaptecho;
  Function()? onTaplearn;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  drwercomp({
    this.onTaphome,
    this.onTaplearn,
    this.onTapscan,
    this.onTaptecho,
    super.key,  this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
      child: Drawer(
          backgroundColor: textTitlecolor,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(onTap: () {
                 scaffoldKey?.currentState?.closeEndDrawer();
              },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child:  Stack(
                    children: [
                      Image.asset("images/menu.png",scale: 1.6 ,),
                       Positioned(
                         child: Container( decoration: BoxDecoration(shape: BoxShape.circle, color:Colors.white.withOpacity(0.8),),
                          width: 45,height: 45,
                          
                         ),
                       )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Center(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: onTaphome,
                            child: Text(
                              "Home",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            mouseCursor: MaterialStateMouseCursor.clickable,
                            onTap: onTapscan,
                            child: Text(
                              "Scan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: onTaptecho,
                            child: Text(
                              "Our Technology",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: onTaplearn,
                            child: Text(
                              "Learn about hcc",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
