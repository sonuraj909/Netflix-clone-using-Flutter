import 'package:atom1/domain/core/failure/main_failure.dart';
import 'package:atom1/domain/downloads/models/downloads.dart';
import 'package:dartz/dartz.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
