import 'package:flutter/material.dart';

import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/string_manager.dart';

class CustomTitlOnBording extends StatelessWidget {
  const CustomTitlOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(StringManager.titlOnbordingPage,textAlign: TextAlign.start,style: TextStyle(color: ColorManger.kColorWite,fontSize: FontSize.fz_36,fontWeight: FontWeight.bold,fontFamily: FonteManager.sfProDisplay),);
  }
}
