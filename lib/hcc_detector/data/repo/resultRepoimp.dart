// import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:hcc_detector/core/Api.dart';
// import 'package:hcc_detector/core/faliure.dart';
// import 'package:hcc_detector/hcc_detector/data/repo/reultRepo.dart';
// import 'dart:io';

// class ResultRepoimp implements resulRepo {
//   final Apiservice Apiser;

//   ResultRepoimp(this.Apiser);
//   @override
//   Future<Either<failure, String>> resultimg(File? imageFile) async {
//     try {
//       FormData formData = FormData.fromMap({
//         'file': await MultipartFile.fromFile(imageFile!.path),
//       });
//       var jsonData = await Apiser.postdiofromdata(
//         url: "http://127.0.0.1:5000/predict",
//         data: formData,
//       );

//      // print("===============${jsonData['predicted_class']}");

//       return right(jsonData['predicted_class']);
//     } catch (e) {
//       if (e is DioException) {
//         return left(serverFailure.fromDioerro(e));
//       }
//       return left(serverFailure(e.toString()));
//     }
//   }
// }
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hcc_detector/core/Api.dart';
import 'package:hcc_detector/core/faliure.dart';
import 'package:hcc_detector/hcc_detector/data/repo/reultRepo.dart';

class ResultRepoimp implements resulRepo {
  final Apiservice apiser;

  ResultRepoimp(this.apiser);

  @override
  Future<Either<failure, String>> resultimg(List<File?> imageFiles) async {
    try {
      List<MultipartFile> multipartImages = [];
      for (var imageFile in imageFiles) {
        if (imageFile != null) {
          multipartImages.add(await MultipartFile.fromFile(imageFile.path));
        }
      }

      FormData formData = FormData.fromMap({
        'file': multipartImages,
      });

      var jsonData = await apiser.postdiofromdata(
        url: "http://127.0.0.1:5000/predict",
        data: formData,
      );

      return right(jsonData['predicted_class']);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioerro(e));
      }
      return left(serverFailure(e.toString()));
    }
  }
}
