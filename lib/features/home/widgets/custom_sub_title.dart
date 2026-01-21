import 'package:flutter/cupertino.dart';

import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/size_manger.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p14),
        child:  Text(title,style: const TextStyle(color: ColorManger.kColorWite,fontSize: FontSize.fz_18,fontWeight: FontWeight.bold,fontFamily: FonteManager.sfProDisplay ),),
      ),
      alignment: AlignmentDirectional.centerStart,
    );
  }
}
