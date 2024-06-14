import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({super.key});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cleaning Service'),
      ),
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
                top: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '★4.5',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    Text('AC Regular Service'),
                  ],
                ),
              ),
            ]),
            // const SizedBox(
            //   height: 200,
            // ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8.0),
                    const SizedBox(height: 16.0),
                    const Text('Type of Property'),
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
                        Text('Total: USD 150.50'),
                        Text('Bill Details'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () => print('Save Draft'),
                          child: const Text('Save Draft'),
                        ),
                        ElevatedButton(
                          onPressed: () => print('Book Now'),
                          child: const Text('Book Now'),
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
}
