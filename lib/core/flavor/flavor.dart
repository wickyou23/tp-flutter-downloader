import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor.freezed.dart';

enum FlavorType {
  dev,
  prod;

  static FlavorType fromString(String type) {
    switch (type) {
      case 'dev':
        return FlavorType.dev;
      case 'prod':
        return FlavorType.prod;
      default:
        return FlavorType.dev;
    }
  }
}

@freezed
class Flavor with _$Flavor {
  const factory Flavor({
    required FlavorType type,
    required String baseUrl,
  }) = _Flavor;
}
