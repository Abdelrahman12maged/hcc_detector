
import 'package:flutter/material.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/Learn.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/Scan.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/appbarcomp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/drawercomp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/welcome.dart';


class OurTechnologyPage extends StatelessWidget {
   OurTechnologyPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  drwercomp(scaffoldKey: _scaffoldKey,
        onTaphome: () {
         Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Welcome(),
            ),
          );
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
      backgroundColor: const Color(0xFFF0F1E8),
      body: LayoutBuilder(builder: (context, constraints) => 
         Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
                Container(
                    width: double.infinity,
                    height: constraints.maxHeight * 0.15,
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.03),
                    child: AppbarComponent(scaffoldKey: _scaffoldKey,
                
                    ),
                  ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     //  Logo
              //     Row(
              //       children: [
              //         Image.asset(
              //           "images/kebda copy.png",
              //           scale: 13.0,
              //         ),
              //         const Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Text(
              //               "HCC",
              //               style: TextStyle(
              //                 color: Color.fromARGB(255, 16, 67, 175),
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Detector",
              //               style: TextStyle(
              //                 color: Colors.grey,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //     // Menu Button
              //     Image.asset(
              //       "images/menu.png",
              //       scale: 1.6,
              //     ),
              //   ],
              // ),
              const SizedBox(height: 16),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 6,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 100.0,
                              right:
                                  100.0), // You can adjust this value as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sectionTitle('Model Purpose:'),
                              sectionBody(
                                  'In this project, I developed a deep learning model using PyTorch to classify liver images for the presence of hepatocellular carcinoma (HCC) tumors. This model aims to assist in the early detection of HCC, potentially improving patient outcomes by facilitating timely and accurate diagnosis.'),
                              const SizedBox(height: 16),
                              sectionTitle('Model Architecture:'),
                              sectionBody(
                                  'The model is based on a convolutional neural network (CNN), which is particularly well-suited for image classification tasks due to its ability to capture spatial hierarchies in images.'),
                              const SizedBox(height: 16),
                              sectionTitle('Data Preparation:'),
                              sectionBody(
                                  'We collected real data from the hospital to make this model suited for our environment as this disease could happen under different circumstances in another environment.'),
                              const SizedBox(height: 16),
                              sectionTitle(
                                  'Co-operation with Al-Rajhy Hospital:'),
                              sectionBody(
                                  'We obtained this data by the co-operation with Al-Rajhy Hospital and they helped us understand the disease and its factors and etiology.'),
                              const SizedBox(height: 16),
                              sectionTitle('Technology Used:'),
                              sectionBody(
                                  '- PyTorch: An open-source deep learning framework that provides flexibility and ease of use for building and training neural networks\n- OpenCV and PIL: Libraries used for image processing tasks, such as reading, resizing, and augmenting images.'),
                            ],
                          ),
                        ),
                      ),
                    ),
        
                    /////*************************************** */
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 4,
                      child: Image.asset('images/m2.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0,
                    bottom: 25.0), // Adjust the padding values as needed
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(
                          context); // Navigate back to the previous page
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 16, 67, 175),
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 16, 67, 175),
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Color.fromARGB(255, 16, 67, 175),
      ),
    );
  }

  Widget sectionBody(String body) {
    return Text(
      body,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        height: 1.5,
      ),
    );
  }
}

