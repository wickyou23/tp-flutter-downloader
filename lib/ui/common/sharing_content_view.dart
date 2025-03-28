import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp_flutter_downloader/build_gen/assets.gen.dart';
import 'package:tp_flutter_downloader/domain/usecases/share_media_to_social_usecase.dart';

class SharingContentView extends StatelessWidget {
  final ShareMediaToSocialUsecase usecase;
  final String videoPath;

  const SharingContentView({
    required this.usecase,
    required this.videoPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Share to Story or Short",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              CupertinoButton(
                onPressed: () => {context.router.popForced()},
                padding: EdgeInsets.zero,
                child: Icon(
                  Icons.close_rounded,
                  color: Colors.black,
                  size: 24,
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => {
                  usecase.execute(
                    ShareMediaToSocialUsecaseInput(
                      videoPath,
                      SocialType.facebook,
                    ),
                  )
                },
                child: Assets.images.facebookIcon.svg(
                  width: 64,
                  height: 64,
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => {
                  usecase.execute(
                    ShareMediaToSocialUsecaseInput(
                      videoPath,
                      SocialType.instagram,
                    ),
                  )
                },
                child: Assets.images.instagramIcon.svg(
                  width: 64,
                  height: 64,
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => {},
                child: Assets.images.tiktokIcon.svg(
                  width: 64,
                  height: 64,
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => {},
                child: Assets.images.youtubeIcon.svg(
                  width: 64,
                  height: 64,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
