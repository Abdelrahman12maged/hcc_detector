import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hcc_detector/core/Api.dart';
import 'package:hcc_detector/hcc_detector/data/repo/resultRepoimp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Controller/Cubit.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/welcome.dart';
import 'package:process_run/cmd_run.dart';

Future<void> main() async {
  runApp(const MyApp()); 
  
  
  // if (Platform.isWindows) {
  //   await run('C:/Users/Abdo/Desktop/runserver.bat');
  // }



}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      
        useMaterial3: true,
      ),
      home:  Welcome(), 
      
      
    );
  }
}
