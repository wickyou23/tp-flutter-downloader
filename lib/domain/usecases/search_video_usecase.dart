import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/domain/entities/video_response.dart';
import 'package:tp_flutter_downloader/domain/repositories/videos_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

@injectable
class SearchVideoUseCase extends BaseUseCase
    implements FutureUseCase<String, VideoResponse> {
  SearchVideoUseCase(this.videosRepo);

  final VideosRepo videosRepo;

  @override
  Future<VideoResponse> execute(String input) async {
    return videosRepo.searchVideos(input);
  }
}
