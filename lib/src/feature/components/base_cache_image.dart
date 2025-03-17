import 'package:cached_network_image/cached_network_image.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/constant/app_images.dart';


class BaseCacheImage extends StatelessWidget {
  const BaseCacheImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
    this.borderRadius = BorderRadius.zero,
    this.errorWidget,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius borderRadius;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        width: width,
        height: height,
        imageUrl: url,
        fit: fit ?? BoxFit.cover,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                Color.fromARGB(0, 1, 1, 1),
                BlendMode.colorBurn,
              ),
            ),
          ),
        ),
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) =>
        errorWidget ?? SvgPicture.asset(AppImages.icError)
            .size(height: 48, width: 48),
      ),
    );
  }
}
