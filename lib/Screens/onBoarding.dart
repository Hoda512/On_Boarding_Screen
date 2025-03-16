import 'package:flutter/material.dart';
import 'package:onboarding/controller/onboardingController.dart';
import 'package:onboarding/data/dataSource/static.dart';
import 'package:onboarding/log_in.dart';
import 'package:onboarding/widget/onboarding/coustemButton.dart';
import 'package:onboarding/widget/onboarding/coustemSlider.dart';
import 'package:onboarding/widget/onboarding/coustem_button_skip.dart';
import 'package:onboarding/widget/onboarding/dotController.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppOnBordingControllerImp());
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        CoustemsliderOnBorder(),
        Column(
          children: [
            CoustemDotcontrollerOnBorder(),
            SizedBox(
              height: 80,
            ),
            CoustembuttonOnBording(),
            SizedBox(
              height: 20,
            ),
            CoustemButtonSkipOnBoaarding(),
          ],
        )
      ],
    )));
  }
}
