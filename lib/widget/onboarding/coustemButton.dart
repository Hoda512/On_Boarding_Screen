import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/controller/onboardingController.dart';
import '../../constant/color.dart';

class CoustembuttonOnBording extends GetView<AppOnBordingControllerImp> {
  const CoustembuttonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppOnBordingControllerImp>(
      builder: (controller) => Container(
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        child: MaterialButton(
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          child: Text(
            controller.isLastPage() ? "Get Started" : "Continue",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
