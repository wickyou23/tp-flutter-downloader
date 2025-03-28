import 'dart:io';

mixin PreviewVideoDisplayable {
  File get mediaFile;
  File? get thumbFile;
  String get title;
  String get desc;
  bool get isVideo;
  int get durations;
  String get mediaId;
  int get id;
}
