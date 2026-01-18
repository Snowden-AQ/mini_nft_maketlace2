import 'package:flutter/material.dart';

import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/string_manager.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(StringManager.titleHomePage,style:
    TextStyle(fontSize:FontSize.fz_25_23 ,color:ColorManger.kColorWite),);
  }
}
