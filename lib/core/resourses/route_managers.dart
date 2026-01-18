import 'package:flutter/cupertino.dart';
import 'package:mini_nft_maketlace2/features/home/screens/home_page.dart';
import 'package:mini_nft_maketlace2/features/onBoarding/screen/on_boarding_page.dart';

class RouteManagers{
  static Map<String, WidgetBuilder> rout={
   RouteName.kOnBoardingPage :(context) => OnBoardingPage(),
   RouteName.KHomePage:(context) => const HomePage()



  };

}


class RouteName{
  static const String kOnBoardingPage="on_boarding_page";
  static const String KHomePage ="HomePage";
}