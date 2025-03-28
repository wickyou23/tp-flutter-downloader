import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:social_share/social_share.dart';
import 'package:tp_flutter_downloader/domain/repositories/configuration_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

enum SocialType { facebook, instagram }

class ShareMediaToSocialUsecaseInput {
  final String videoPath;
  final SocialType socialType;

  ShareMediaToSocialUsecaseInput(this.videoPath, this.socialType);
}

@injectable
class ShareMediaToSocialUsecase extends BaseUseCase
    implements FutureUseCase<ShareMediaToSocialUsecaseInput, void> {
  final ConfigurationRepo appConfigRepo;

  ShareMediaToSocialUsecase(this.appConfigRepo);

  @override
  Future<void> execute(ShareMediaToSocialUsecaseInput input) async {
    final file = File(input.videoPath);
    if (!await file.exists()) {
      throw Exception('Video file not found');
    }

    try {
      switch (input.socialType) {
        case SocialType.facebook:
          {
            final fbAppId = appConfigRepo.fbAppId ?? '';
            if (fbAppId.isEmpty) throw Exception('Facebook app id not found');

            final str = await SocialShare.shareFacebookStory(
              appId: fbAppId,
              backgroundResourcePath: file.path,
            );

            debugPrint(str);
          }
        case SocialType.instagram:
          {
            final str = await SocialShare.shareInstagramStory(
              appId: '',
              backgroundResourcePath: file.path,
            );

            debugPrint(str);
          }
        default:
          break;
      }
    } catch (e) {
      debugPrint('Error sharing to Stories: $e');
      rethrow;
    }
  }
}
