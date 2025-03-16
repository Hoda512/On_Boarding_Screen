import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onboarding/data/dataSource/static.dart';
import 'package:onboarding/log_in.dart';

abstract class AppOnBordingController extends GetxController {
  next();
  onPageChanged(int index);
}

class AppOnBordingControllerImp extends AppOnBordingController {
  int currentPage = 0;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  next() async {
    if (currentPage >= AppOnBoardingList.length - 1) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('seenOnboarding', true);
      Get.offAll(LogIn());
    } else {
      currentPage++;
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
      update();
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  bool isLastPage() {
    return currentPage == AppOnBoardingList.length - 1;
  }
}
