import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';

import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/string_manager.dart';
import '../widgets/custom_title_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.kColorprimare,
      body: SafeArea(child: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 12.61),
            CustomTitleHomePage()
          ],
        ),
      )),
    );
  }
}
