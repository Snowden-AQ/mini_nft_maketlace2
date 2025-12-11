import 'package:flutter/cupertino.dart';
import 'package:mini_nft_maketlace2/features/onBoarding/on_boarding_page.dart';

class RouteManagers{
  static Map<String, WidgetBuilder> rout={
   RouteName.kOnBoardingPage :(context) => OnBoardingPage()


  };

}


class RouteName{
  static const String kOnBoardingPage="on_boarding_page";
}