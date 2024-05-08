import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carsoulCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carsoulCurrentIndex.value = index;
  }
}
