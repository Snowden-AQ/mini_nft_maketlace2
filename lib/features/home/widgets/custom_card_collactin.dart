import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../../core/resourses/asset_image_manager.dart';
import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/size_manger.dart';

class CustomCardCollactin extends StatelessWidget {
  const CustomCardCollactin({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(RadiusManger.r20),
        child: BackdropFilter(

          filter: ImageFilter.blur(sigmaX:BlurManger.b10 , sigmaY: BlurManger.b10),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(PaddingValue.p8),
            height: HeightValue.h200,
            width: WeightValue.w157,
            color: ColorManger.kColorWite.withOpacity(0.1),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusManger.r27_03),
                    child: const Image(image: AssetImage(AssetManager.trendingHomePage2),height: HeightValue.h139,)),
                const SizedBox(height: HeightValue.h10,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("dar"),
                    Row(
                      children: [
                        Icon(CupertinoIcons.heart_fill,color: ColorManger.kColorRed,),
                        Text("200")
                      ],
                    )
                  ],

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
