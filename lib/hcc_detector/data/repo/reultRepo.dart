import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hcc_detector/core/faliure.dart';

abstract class resulRepo {
  Future<Either<failure, String>> resultimg(List<File?> imageFiles);
}
