import 'package:flutter/material.dart';

import '../../../core/resourses/asset_image_manager.dart';

class CustomBackgroundImageOnBording extends StatelessWidget {
  const CustomBackgroundImageOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        image: AssetImage(AssetManager.onBoridingBackGroundImage));
  }
}
