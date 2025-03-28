import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/domain/entities/video_response.dart';
import 'package:tp_flutter_downloader/domain/repositories/videos_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

class DownloadVideoThumbUseCaseInput {
  final String fileName;
  final String thumbUrl;
  final Map<String, dynamic> headers;
  final VideoSource videoSource;

  DownloadVideoThumbUseCaseInput(
    this.fileName,
    this.thumbUrl,
    this.headers,
    this.videoSource,
  );
}

@injectable
class DownloadVideoThumbUseCase extends BaseUseCase
    implements FutureUseCase<DownloadVideoThumbUseCaseInput, File> {
  final VideosRepo videosRepo;

  DownloadVideoThumbUseCase(this.videosRepo);

  @override
  Future<File> execute(DownloadVideoThumbUseCaseInput input) async {
    return await videosRepo.downloadVideoThumbnail(
      input.thumbUrl,
      input.fileName,
      headers: input.headers,
    );
  }
}
