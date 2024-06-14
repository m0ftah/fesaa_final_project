import 'package:fesaa_final_project/data/models/selectionPopupModel/selection_popup_model.dart';
import 'package:fesaa_final_project/features/orders/models/service_detail/service_detail_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ServiceDetailsController extends GetxController {
  Rx<ServiceDetailsModel> serviceDetailsModelObj = ServiceDetailsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in serviceDetailsModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    serviceDetailsModelObj.value.dropdownItemList.refresh();
  }
}
