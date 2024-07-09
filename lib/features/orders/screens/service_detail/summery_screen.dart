import 'package:fesaa_final_project/common/widgets/appbar/appbar.dart';
import 'package:fesaa_final_project/features/orders/screens/service_detail/payment/peyment_screen.dart';
import 'package:fesaa_final_project/features/orders/screens/service_detail/widgets/bill_details.dart';
import 'package:fesaa_final_project/features/orders/screens/service_detail/widgets/location_of_booking.dart';
import 'package:fesaa_final_project/features/orders/screens/service_detail/widgets/service_summry.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SummeryScreem extends StatelessWidget {
  const SummeryScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Summery'),
        showBackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // location and the time of booking 
              const LocationOfBooking(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // Service details and astamated time 
              const ServiceDetailes(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // total bill details with discounts 
              const BillDetails(),
              const SizedBox(height: TSizes.spaceBtwItems), //
              SizedBox(
                width: TSizes.buttonWidth * 3,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=>  const PaymentScreen()),
                  child: const Text('Pay'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

