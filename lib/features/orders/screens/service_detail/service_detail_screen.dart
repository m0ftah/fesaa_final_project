import 'dart:ui';
import 'package:fesaa_final_project/features/orders/screens/service_detail/summery_screen.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({super.key});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: 250.0,
                child: Image(
                  image: const AssetImage(TImages.cleaningImage2),
                  height: 700,
                  width: 700,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ),
              const Positioned(
                top: 175,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '★4.5',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    Text(
                      'AC Regular Service',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ]),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8.0),
                    const SizedBox(height: 16.0),
                    Text(
                      'Type of Property',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 'Home',
                            groupValue: 'selectedProperty',
                            onChanged: (value) {}),
                        const Text('Home'),
                        Radio(
                            value: 'Office',
                            groupValue: 'selectedProperty',
                            onChanged: (value) {}),
                        const Text('Office'),
                        Radio(
                            value: 'Vila',
                            groupValue: 'selectedProperty',
                            onChanged: (value) {}),
                        const Text('Vila'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Text('Number of Units'),
                        const Spacer(),
                        Row(
                          children: [
                            const Text('2'),
                            IconButton(
                                icon: const Icon(Icons.add), onPressed: () {}),
                            IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Text('Number of Bedrooms'),
                        const Spacer(),
                        Row(
                          children: [
                            const Text('0'),
                            IconButton(
                                icon: const Icon(Icons.add), onPressed: () {}),
                            IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Description',
                      ),
                      maxLines: null,
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bill Details'),
                        Text('Total: USD 150.50'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: TSizes.buttonWidth * 3,
                          child: TextField(
                            controller: _dateController,
                            decoration: const InputDecoration(
                              labelText: 'Chose the date',
                              prefixIcon: Icon(Iconsax.calendar),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            selectionHeightStyle: BoxHeightStyle.max,
                            readOnly: true,
                            onTap: () {
                              _selectDate();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: TSizes.buttonWidth,
                          child: ElevatedButton(
                            onPressed: () => print('Save Draft'),
                            child: const Text('Save Draft'),
                          ),
                        ),
                        SizedBox(
                          width: TSizes.buttonWidth,
                          child: ElevatedButton(
                            onPressed: () =>
                                Get.to(() => const SummeryScreem()),
                            child: const Text('Book Now'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context, firstDate: DateTime(2022), lastDate: DateTime(2025));

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
