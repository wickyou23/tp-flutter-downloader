import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/domain/repositories/videos_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

class SaveFileToLocalUseCaseInput {
  final File file;
  final bool isVideo;

  SaveFileToLocalUseCaseInput({
    required this.file,
    this.isVideo = true,
  });
}

class SaveFileToLocalUsecaseOutput {
  final bool isSuccess;
  final File? newPath;

  SaveFileToLocalUsecaseOutput({
    required this.isSuccess,
    this.newPath,
  });
}

@injectable
class SaveFileToLocalUseCase extends BaseUseCase
    implements
        FutureUseCase<SaveFileToLocalUseCaseInput,
            SaveFileToLocalUsecaseOutput> {
  final VideosRepo videosRepo;

  SaveFileToLocalUseCase(this.videosRepo);

  @override
  Future<SaveFileToLocalUsecaseOutput> execute(
      SaveFileToLocalUseCaseInput input) async {
    final result = await videosRepo.saveMediaFileToLocalDevice(
      input.file,
      input.file.path,
      input.isVideo,
    );

    if (result is bool) {
      return SaveFileToLocalUsecaseOutput(
        isSuccess: result,
      );
    } else if (result is File) {
      return SaveFileToLocalUsecaseOutput(
        isSuccess: true,
        newPath: result,
      );
    } else {
      return SaveFileToLocalUsecaseOutput(
        isSuccess: false,
      );
    }
  }
}
