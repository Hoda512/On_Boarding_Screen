import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/controller/onboardingController.dart';

import '../../data/dataSource/static.dart';
import '../../log_in.dart';

class CoustemButtonSkipOnBoaarding extends StatelessWidget {
  const CoustemButtonSkipOnBoaarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppOnBordingControllerImp>(
      builder: (controller) =>
          controller.currentPage == AppOnBoardingList.length - 1
              ? SizedBox()
              : Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 1),
                  child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () {
                      Get.offAll(LogIn());
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
    );
  }
}
