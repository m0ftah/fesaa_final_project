import 'package:fesaa_final_project/common/widgets/success_screen/success_screen.dart';
import 'package:fesaa_final_project/navigation_menu.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentOptionController extends GetxController {
  // Use a Map to track selection state for each option
  final Map<String, bool> selectedOptions = {
    'UPI': false,
    'Paytm UPI': false,
    'PhonePe': false,
    'Cash': false
  }.obs; // Add other options

  void onOptionSelected(String option, bool newValue) {
    selectedOptions.update(option, (value) => newValue);
    // Reset all other options to false
    selectedOptions.forEach(
        (key, value) => key != option ? selectedOptions[key] = false : null);
  }
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PaymentOptionController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Option'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select a payment option',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            _buildOptionRow(context, controller, 'UPI'),
            _buildOptionRow(context, controller, 'Paytm UPI'),
            _buildOptionRow(context, controller, 'PhonePe'),
            _buildOptionRow(context, controller, 'Cash'),

            const Spacer(), // Ensures button stays at bottom
            Obx(
              () => ElevatedButton(
                onPressed: controller.selectedOptions.values
                        .any((value) => value == true)
                    ? () => Get.to(() => SuccessScreen(
                          image: TImages.staticSuccessIllustration,
                          title: 'sbdfkbsfkjbksdf',
                          subtitle: 'subtitle',
                          onPressed: () => Get.to(() => const NavigationMenu()),
                          buttonText: 'View Bookings',
                        ))
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: controller.selectedOptions.values
                          .any((value) => value == true)
                      ? TColors.primary
                      : TColors.grey,
                  minimumSize: const Size(double.infinity, 50.0),
                ),
                child: const Text('Proceed'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionRow(BuildContext context,
      PaymentOptionController controller, String optionText) {
    return Obx(
      () => Row(
        children: [
          Checkbox(
            value: controller.selectedOptions[optionText],
            onChanged: (value) =>
                controller.onOptionSelected(optionText, value!),
          ),
          Text(optionText),
        ],
      ),
    );
  }
}
