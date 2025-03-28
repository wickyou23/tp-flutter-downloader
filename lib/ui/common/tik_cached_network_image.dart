import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TikCachedNetworkImage extends StatelessWidget {
  const TikCachedNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
    this.headers,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Map<String, String>? headers;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      httpHeaders: headers,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: width,
          height: height,
          color: Colors.white,
        ),
      ),
    );
  }
}
