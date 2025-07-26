import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomAspectRatio extends StatelessWidget {
  const CustomAspectRatio({
    super.key,
    required this.borderRadius,
    required this.imageUrl,
    required this.aspectRatio,
  });

  final double borderRadius;
  final double aspectRatio;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: imageUrl,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
                child:
                    CircularProgressIndicator(value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            )));
  }
}
