
import 'package:fesaa_final_project/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instanse => Get.find();

  final pagecontroller = PageController();
  Rx<int> currentpageindex = 0.obs;

  void updatePageIndicator(index) => currentpageindex.value = index;

  void dotNavigationClick(index) {
    currentpageindex.value = index;
    pagecontroller.jumpTo(index);
  }

  void nextPage() {
    if (currentpageindex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentpageindex.value + 1;
      pagecontroller.jumpToPage(page);
    }
  }

  void skipPage() {
    currentpageindex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
