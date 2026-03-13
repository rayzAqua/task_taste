import 'package:flutter/material.dart';

class ImageAssetWidget extends StatelessWidget {
  final String url;

  final double? width;
  final double? height;
  final double? widthFactor;
  final double? heightFactor;

  final BoxFit fit;
  final double? aspectRatio;
  final double radius;
  final Color? color;

  const ImageAssetWidget.fixed({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.aspectRatio,
    this.radius = 0,
    this.fit = BoxFit.cover,
    this.color,
  }) : widthFactor = null,
       heightFactor = null,
       assert(
         width != null || height != null,
         "Either width or height must be provided.",
       );

  const ImageAssetWidget.fractional({
    super.key,
    required this.url,
    this.widthFactor,
    this.heightFactor,
    this.aspectRatio,
    this.radius = 0,
    this.fit = BoxFit.cover,
    this.color,
  }) : width = null,
       height = null,
       assert(
         widthFactor != null || heightFactor != null,
         "Either widthFactor or heightFactor must be provided.",
       );

  bool get _isFixed => width != null || height != null;

  @override
  Widget build(BuildContext context) {
    final Widget image = _buildImage();

    return _isFixed
        ? SizedBox(width: width, height: height, child: image)
        : FractionallySizedBox(
            widthFactor: widthFactor,
            heightFactor: heightFactor,
            child: image,
          );
  }

  Widget _buildImage() {
    Widget image = ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(url, fit: fit, color: color),
    );

    if (aspectRatio != null) {
      return AspectRatio(aspectRatio: aspectRatio!, child: image);
    }

    return image;
  }
}
