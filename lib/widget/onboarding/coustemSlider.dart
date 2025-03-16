import 'package:flutter/material.dart';
import 'package:onboarding/controller/onboardingController.dart';
import '../../constant/color.dart';
import '../../data/dataSource/static.dart';
import 'package:get/get.dart';

class CoustemsliderOnBorder extends GetView<AppOnBordingControllerImp> {
  const CoustemsliderOnBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: AppOnBoardingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Text(
              "${AppOnBoardingList[index].titel!}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              "${AppOnBoardingList[index].image!}",
              height: 230,
              width: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "${AppOnBoardingList[index].body}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2,
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
