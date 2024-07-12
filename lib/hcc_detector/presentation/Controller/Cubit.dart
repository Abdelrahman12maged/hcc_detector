// import 'dart:io';
// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:hcc_detector/hcc_detector/data/repo/resultRepoimp.dart';
// import 'package:hcc_detector/hcc_detector/data/repo/reultRepo.dart';
// import 'package:hcc_detector/hcc_detector/presentation/Controller/states.dart';

// // Define the cubit
// class ResultCubit extends Cubit<ResultState> {
//   final ResultRepoimp resultRepoimp;

//   ResultCubit(this.resultRepoimp) : super(ResultInitial());

//   void fetchResult(File imageFile) async {
//     emit(ResultLoading());
//          await Future.delayed(Duration(seconds: 2));

//     final result = await resultRepoimp.resultimg(imageFile);
//     result.fold(
//       (failure) => emit(ResultError(failure.errormessage)),
//       (result) => emit(ResultLoaded(result)),
//     );
//   }
// }
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hcc_detector/hcc_detector/data/repo/resultRepoimp.dart';
import 'package:hcc_detector/hcc_detector/data/repo/reultRepo.dart';
import 'package:hcc_detector/hcc_detector/presentation/Controller/states.dart';

class ResultCubit extends Cubit<ResultState> {
  final ResultRepoimp resultRepo;

  ResultCubit(this.resultRepo) : super(ResultInitial());

  void fetchResults(List<File?> images) async {
    emit(ResultLoading());
    final result = await resultRepo.resultimg(images);
    result.fold(
      (failure) => emit(ResultError(failure.errormessage)),
      (result) => emit(ResultLoaded(result)),
    );
  }
}
