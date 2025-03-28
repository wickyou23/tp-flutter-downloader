// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i497;

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tp_flutter_downloader/core/flavor/app_flavor.dart' as _i704;
import 'package:tp_flutter_downloader/core/networks/dio_client.dart' as _i95;
import 'package:tp_flutter_downloader/core/packages/app_channel.dart' as _i646;
import 'package:tp_flutter_downloader/data/DB/drift_db.dart' as _i159;
import 'package:tp_flutter_downloader/data/repositories/configuration_repo_impl.dart'
    as _i219;
import 'package:tp_flutter_downloader/data/repositories/histories_repo_impl.dart'
    as _i236;
import 'package:tp_flutter_downloader/data/repositories/videos_repo_impl.dart'
    as _i895;
import 'package:tp_flutter_downloader/data/secure_storage.dart' as _i756;
import 'package:tp_flutter_downloader/domain/repositories/configuration_repo.dart'
    as _i194;
import 'package:tp_flutter_downloader/domain/repositories/histories_repo.dart'
    as _i190;
import 'package:tp_flutter_downloader/domain/repositories/videos_repo.dart'
    as _i1055;
import 'package:tp_flutter_downloader/domain/usecases/delete_history_usecase.dart'
    as _i0;
import 'package:tp_flutter_downloader/domain/usecases/download_video_thumb_usecase.dart'
    as _i710;
import 'package:tp_flutter_downloader/domain/usecases/download_video_usecase.dart'
    as _i237;
import 'package:tp_flutter_downloader/domain/usecases/get_all_histories_usecase.dart'
    as _i128;
import 'package:tp_flutter_downloader/domain/usecases/get_configuration_usecase.dart'
    as _i82;
import 'package:tp_flutter_downloader/domain/usecases/save_file_to_local_usecase.dart'
    as _i111;
import 'package:tp_flutter_downloader/domain/usecases/search_video_usecase.dart'
    as _i413;
import 'package:tp_flutter_downloader/domain/usecases/share_media_to_social_usecase.dart'
    as _i215;
import 'package:tp_flutter_downloader/ui/downloader/bloc/downloader_page_cubit.dart'
    as _i338;
import 'package:tp_flutter_downloader/ui/histories/bloc/histories_page_cubit.dart'
    as _i922;
import 'package:tp_flutter_downloader/ui/preview_player/bloc/preview_video_player_cubit.dart'
    as _i265;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i646.AppChannel>(() => _i646.AppChannel());
    gh.lazySingleton<_i159.AppDriftDatabase>(() => _i159.AppDriftDatabase());
    gh.lazySingleton<_i756.SecureStorage>(() => _i756.SecureStorage());
    gh.lazySingleton<_i704.AppFlavor>(() => _i704.AppFlavor()..init());
    gh.lazySingleton<_i194.ConfigurationRepo>(
        () => _i219.ConfigurationRepoImpl(gh<_i756.SecureStorage>()));
    gh.factory<_i215.ShareMediaToSocialUsecase>(
        () => _i215.ShareMediaToSocialUsecase(gh<_i194.ConfigurationRepo>()));
    gh.lazySingleton<_i190.HistoriesRepo<_i159.HistoryDBData>>(
        () => _i236.HistoriesRepoImpl(gh<_i159.AppDriftDatabase>()));
    gh.factory<_i82.GetConfigurationUseCase>(
        () => _i82.GetConfigurationUseCase(gh<_i194.ConfigurationRepo>()));
    gh.factory<_i0.DeleteHistoryUsecase>(() => _i0.DeleteHistoryUsecase(
        gh<_i190.HistoriesRepo<_i159.HistoryDBData>>()));
    gh.factory<_i128.GetAllHistoriesUsecase>(() => _i128.GetAllHistoriesUsecase(
        gh<_i190.HistoriesRepo<_i159.HistoryDBData>>()));
    gh.factory<_i922.HistoriesPageCubit>(() => _i922.HistoriesPageCubit(
          gh<_i128.GetAllHistoriesUsecase>(),
          gh<_i190.HistoriesRepo<_i159.HistoryDBData>>(),
        ));
    gh.lazySingleton<_i95.DioClient>(
        () => _i95.DioClient(gh<_i704.AppFlavor>()));
    gh.lazySingleton<_i1055.VideosRepo>(
        () => _i895.VideosRepoImpl(gh<_i95.DioClient>()));
    gh.factory<_i237.DownloadVideoUseCase>(() => _i237.DownloadVideoUseCase(
          gh<_i95.DioClient>(),
          gh<_i190.HistoriesRepo<_i159.HistoryDBData>>(),
          gh<_i1055.VideosRepo>(),
        ));
    gh.factory<_i710.DownloadVideoThumbUseCase>(
        () => _i710.DownloadVideoThumbUseCase(gh<_i1055.VideosRepo>()));
    gh.factory<_i111.SaveFileToLocalUseCase>(
        () => _i111.SaveFileToLocalUseCase(gh<_i1055.VideosRepo>()));
    gh.factory<_i413.SearchVideoUseCase>(
        () => _i413.SearchVideoUseCase(gh<_i1055.VideosRepo>()));
    gh.factory<_i265.PreviewVideoPlayerCubit>(
        () => _i265.PreviewVideoPlayerCubit(
              gh<_i497.File>(),
              gh<bool>(),
              gh<_i111.SaveFileToLocalUseCase>(),
              gh<_i0.DeleteHistoryUsecase>(),
              gh<_i215.ShareMediaToSocialUsecase>(),
            ));
    gh.factory<_i338.DownloaderPageCubit>(() => _i338.DownloaderPageCubit(
          gh<_i710.DownloadVideoThumbUseCase>(),
          gh<_i413.SearchVideoUseCase>(),
          gh<_i237.DownloadVideoUseCase>(),
        ));
    return this;
  }
}
