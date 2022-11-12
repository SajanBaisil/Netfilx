import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/Domain/downloads/i_downloads_respo.dart';

import '../../Domain/core/failures/main_failure.dart';
import '../../Domain/downloads/models/downloads/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRespo _downloadsRespo;
  DownloadsBloc(this._downloadsRespo) : super(DownloadsState.inital()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureorSuccess: none(),
        ),
      );

      final Either<MainFailure, List<Downloads>> downloadsoption =
          await _downloadsRespo.getDownloadsImage();
      emit(
        downloadsoption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureorSuccess: some(
                Left(failure),
              )),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsFailureorSuccess: some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}
