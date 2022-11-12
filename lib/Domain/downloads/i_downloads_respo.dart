import 'package:dartz/dartz.dart';
import 'package:netflix_clone/Domain/core/failures/main_failure.dart';
import 'package:netflix_clone/Domain/downloads/models/downloads/downloads.dart';

abstract class IDownloadsRespo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
