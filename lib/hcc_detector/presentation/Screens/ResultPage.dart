

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hcc_detector/core/Api.dart';
import 'package:hcc_detector/core/constant.dart';
import 'package:hcc_detector/hcc_detector/data/repo/resultRepoimp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Controller/Cubit.dart';
import 'package:hcc_detector/hcc_detector/presentation/Controller/states.dart';

class ResultPage extends StatefulWidget {
  final List<File?> images;

  const ResultPage({required this.images, super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage>
     {
 

  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResultCubit(ResultRepoimp(Apiservice(Dio())))
        ..fetchResults(widget.images),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: textTitlecolor,
          title: Text("Scan Result", style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < widget.images.length; i++)
                          Container(
                            margin: EdgeInsets.all(10),
                            width: constraints.maxWidth /
                                (widget.images.length + 1.5),
                            height: constraints.maxWidth /
                                (widget.images.length + 1.5),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: textTitlecolor, width: 3),
                              borderRadius: BorderRadius.circular(15),
                              image: widget.images[i] != null
                                  ? DecorationImage(
                                      image: FileImage(widget.images[i]!),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                            ),
                           
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    BlocBuilder<ResultCubit, ResultState>(
                      builder: (context, state) {
                        if (state is ResultLoading) {
                          return Column(
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(height: 20),
                              Text("Scanning.......",
                                  style: TextStyle(
                                      color: textTitlecolor, fontSize: 20)),
                            ],
                          );
                        } else if (state is ResultError) {
                          return Text("Error: ${state.message}",
                              style: TextStyle(color: Colors.red, fontSize: 18));
                        } else if (state is ResultLoaded) {
                          return Text(
                            " ${state.result}",
                            style: TextStyle(
                              color: textTitlecolor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
