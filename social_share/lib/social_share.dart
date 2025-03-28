import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class SocialShare {
  static const MethodChannel _channel = MethodChannel('social_share');

  static Future<String?> shareInstagramStory({
    required String appId,
    String? imagePath,
    String? backgroundTopColor,
    String? backgroundBottomColor,
    String? backgroundResourcePath,
    String? attributionURL,
  }) async {
    return shareMetaStory(
      appId: appId,
      platform: "shareInstagramStory",
      imagePath: imagePath,
      backgroundTopColor: backgroundTopColor,
      backgroundBottomColor: backgroundBottomColor,
      attributionURL: attributionURL,
      backgroundResourcePath: backgroundResourcePath,
    );
  }

  static Future<String?> shareFacebookStory({
    required String appId,
    String? imagePath,
    String? backgroundTopColor,
    String? backgroundBottomColor,
    String? backgroundResourcePath,
    String? attributionURL,
  }) async {
    return shareMetaStory(
      appId: appId,
      platform: "shareFacebookStory",
      imagePath: imagePath,
      backgroundTopColor: backgroundTopColor,
      backgroundBottomColor: backgroundBottomColor,
      attributionURL: attributionURL,
      backgroundResourcePath: backgroundResourcePath,
    );
  }

  static Future<String?> shareMetaStory({
    required String appId,
    required String platform,
    String? imagePath,
    String? backgroundTopColor,
    String? backgroundBottomColor,
    String? attributionURL,
    String? backgroundResourcePath,
  }) async {
    var imagePath0 = imagePath;
    var backgroundResourcePath0 = backgroundResourcePath;

    if (Platform.isAndroid) {
      var stickerFilename = "stickerAsset.png";
      await reSaveImage(imagePath, stickerFilename);
      imagePath0 = stickerFilename;
      if (backgroundResourcePath != null) {
        var backgroundImageFilename = backgroundResourcePath.split("/").last;
        final cacheFile = await reSaveImage(
          backgroundResourcePath,
          backgroundImageFilename,
        );

        backgroundResourcePath0 =
            cacheFile?.path.split('/').last ?? backgroundImageFilename;
      }
    }

    Map<String, dynamic> args = <String, dynamic>{
      "stickerImage": imagePath0,
      "backgroundTopColor": backgroundTopColor,
      "backgroundBottomColor": backgroundBottomColor,
      "attributionURL": attributionURL,
      "appId": appId
    };

    if (backgroundResourcePath0 != null) {
      var extension = backgroundResourcePath0.split(".").last;
      if (["png", "jpg", "jpeg"].contains(extension.toLowerCase())) {
        args["backgroundImage"] = backgroundResourcePath0;
      } else {
        args["backgroundVideo"] = backgroundResourcePath0;
      }
    }

    final String? response = await _channel.invokeMethod(platform, args);
    return response;
  }

  static Future<String?> shareTwitter(
    String captionText, {
    List<String>? hashtags,
    String? url,
    String? trailingText,
  }) async {
    //Caption
    var captionText0 = captionText;

    //Hashtags
    if (hashtags != null && hashtags.isNotEmpty) {
      final tags = hashtags.map((t) => '#$t ').join(' ');
      captionText0 = "$captionText0\n$tags";
    }

    //Url
    String url0;
    if (url != null) {
      if (Platform.isAndroid) {
        url0 = Uri.parse(url).toString().replaceAll('#', "%23");
      } else {
        url0 = Uri.parse(url).toString();
      }
      captionText0 = "$captionText0\n$url0";
    }

    if (trailingText != null) {
      captionText0 = "$captionText0\n$trailingText";
    }

    Map<String, dynamic> args = <String, dynamic>{
      "captionText": "$captionText0 ",
    };
    final String? version = await _channel.invokeMethod('shareTwitter', args);
    return version;
  }

  static Future<String?> shareSms(String message,
      {String? url, String? trailingText}) async {
    Map<String, dynamic>? args;
    if (Platform.isIOS) {
      if (url == null) {
        args = <String, dynamic>{
          "message": message,
        };
      } else {
        args = <String, dynamic>{
          "message": "$message ",
          "urlLink": Uri.parse(url).toString(),
          "trailingText": trailingText
        };
      }
    } else if (Platform.isAndroid) {
      args = <String, dynamic>{
        "message": message + (url ?? '') + (trailingText ?? ''),
      };
    }
    final String? version = await _channel.invokeMethod('shareSms', args);
    return version;
  }

  static Future<String?> copyToClipboard({String? text, String? image}) async {
    final Map<String, dynamic> args = <String, dynamic>{
      "content": text,
      "image": image,
    };
    final String? response =
        await _channel.invokeMethod('copyToClipboard', args);
    return response;
  }

  static Future<bool?> shareOptions(String contentText,
      {String? imagePath}) async {
    Map<String, dynamic> args;

    var imagePath0 = imagePath;
    if (Platform.isAndroid) {
      if (imagePath != null) {
        var stickerFilename = "stickerAsset.png";
        await reSaveImage(imagePath, stickerFilename);
        imagePath0 = stickerFilename;
      }
    }
    args = <String, dynamic>{"image": imagePath0, "content": contentText};
    final bool? version = await _channel.invokeMethod('shareOptions', args);
    return version;
  }

  static Future<String?> shareWhatsapp(String content) async {
    final Map<String, dynamic> args = <String, dynamic>{"content": content};
    final String? version = await _channel.invokeMethod('shareWhatsapp', args);
    return version;
  }

  static Future<Map?> checkInstalledAppsForShare() async {
    final Map? apps = await _channel.invokeMethod('checkInstalledApps');
    return apps;
  }

  static Future<String?> shareTelegram(String content) async {
    final Map<String, dynamic> args = <String, dynamic>{"content": content};
    final String? version = await _channel.invokeMethod('shareTelegram', args);
    return version;
  }

// static Future<String> shareSlack() async {
//   final String version = await _channel.invokeMethod('shareSlack');
//   return version;
// }

  //Utils
  static Future<File?> reSaveImage(String? imagePath, String filename) async {
    if (imagePath == null) {
      return null;
    }

    final tempDir = await getTemporaryDirectory();
    final tempFileName = 'media_shared.${filename.split('.').last}';

    File file = File(imagePath);
    Uint8List bytes = file.readAsBytesSync();
    var stickerData = bytes.buffer.asUint8List();
    String stickerAssetName = tempFileName;
    final Uint8List stickerAssetAsList = stickerData;
    final stickerAssetPath = '${tempDir.path}/$stickerAssetName';
    final tempFile = File(stickerAssetPath);
    if (!tempFile.existsSync()) {
      tempFile.createSync();
    }

    tempFile.writeAsBytesSync(stickerAssetAsList);
    return tempFile;
  }
}
