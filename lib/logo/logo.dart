import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'model/logo_model.dart';

class AppLogoWidget extends StatelessWidget {
  final Logo logo;
  const AppLogoWidget({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, child: _buildBody());
  }

  Widget _buildBody() {
    if (logo.type == LogoType.asset) {
      return _buildAsset();
    }

    return _buildNetWork();
  }

  Widget _buildNetWork() {
    return CachedNetworkImage(
      imageUrl: logo.source,
      height: logo.height,
      width: logo.width,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  Widget _buildAsset() {
    return Image.asset(
      logo.source,
      height: logo.height,
      width: logo.width,
    );
  }
}
