import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Domain/core/api_end_points.dart';
import 'package:netflix_clone/Domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/Domain/downloads/i_downloads_respo.dart';
import 'package:netflix_clone/Domain/downloads/models/downloads/downloads.dart';

class DownloadsRespository implements IDownloadsRespo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadslist = [];
        for (final raw in response.data) {
          downloadslist.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        print(downloadslist);
        return  Right(downloadslist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
