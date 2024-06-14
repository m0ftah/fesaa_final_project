import 'package:fesaa_final_project/features/orders/controllers/service_detail/service_details_controller.dart';
import 'package:get/get.dart';

class ServiceDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceDetailsController());
  }
}
