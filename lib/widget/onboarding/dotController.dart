import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/controller/onboardingController.dart';

import '../../constant/color.dart';
import '../../data/dataSource/static.dart';

class CoustemDotcontrollerOnBorder extends GetView<AppOnBordingControllerImp> {
  const CoustemDotcontrollerOnBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppOnBordingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  AppOnBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 5),
                    duration: Duration(microseconds: 900),
                    width: controller.currentPage == index ? 20 : 5,
                    height: 6,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ));
  }
}
