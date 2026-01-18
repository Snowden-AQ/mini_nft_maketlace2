
import 'package:flutter/material.dart';
import '../widgets/custom_background_image_on_bording.dart';
import '../widgets/custom_componenet_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
         const  CustomBackgroundImageOnBording(),
          const CustomComponenetPage()

      ],
      ),
      ),
      );
  }
}
