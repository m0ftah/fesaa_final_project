import 'package:fesaa_final_project/common/custom_shapes/containers/primary_header_contaner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContaner(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
