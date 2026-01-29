










import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/constantes.dart';

import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/home/screens/home_Second.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_card_topseller.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_categore_home_page.dart';
import 'package:mini_nft_maketlace2/features/state_page/screen/state_page.dart';
import '../../../core/resourses/size_manger.dart';

import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/custom_card_collactin.dart';
import '../widgets/custom_sub_title.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index=0;
  List<Widget> w=[HomeSecond(),StatePage()];


  @override
  Widget build(BuildContext context) {
    double widthScreen= MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar:CustomBottomNavigationBar(widthScreen: widthScreen,
        onPressedHome: () {
          index=0;
          setState(() {

          });

        },
        onPressedStates: () {
          index=1;
          setState(() {

          });
        },





      ),
      appBar: index==0? AppBar(
        actions: [
          Padding(padding:EdgeInsets.only(right: PaddingValue.p14),
              child: Icon(Icons.more_horiz) ),

        ],
    backgroundColor:Colors.transparent ,
    title: Text(StringManager.titleHomePage), centerTitle: true,

    )
      :index ==1?AppBar(
        actions: [
          Padding(padding:EdgeInsets.only(right: PaddingValue.p14),
              child: Icon(Icons.more_horiz) ),

        ],
        backgroundColor:Colors.transparent ,
        title: Text(StringManager.titleHomePage), centerTitle: true,

      ):
          AppBar(title: Text("null"),),
      
      

      backgroundColor: ColorManger.kColorprimare,
      body: w[index],

    );
  }
}
