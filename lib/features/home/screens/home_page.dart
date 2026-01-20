import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_categore_home_page.dart';

import '../../../core/resourses/asset_image_manager.dart';
import '../../../core/resourses/size_manger.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Text("data")],
        backgroundColor:Colors.transparent ,
        title: Text(StringManager.titleHomePage), centerTitle: true,

      ),

      backgroundColor: ColorManger.kColorprimare,
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                CustomCategoreHomePage(title: "Art",image:AssetManager.catHomePage3,),
                CustomCategoreHomePage(title: "Art",image:AssetManager.catHomePage2,),
                CustomCategoreHomePage(title: "Art",image:AssetManager.catHomePage3,),
              ],
            ),
          )



        ],
      ),

    );
  }
}
