import 'package:fesaa_final_project/features/orders/screens/bookings/widgets/no_actions_bookings.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Bookings extends StatelessWidget {
  const Bookings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Bookings',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: TColors.black),
          ),
          bottom: const TabBar(
            labelColor: TColors.black,
            indicatorColor: TColors.primary,
            tabs: [
              Tab(
                  child: Text(
                "UpComing",
                style: TextStyle(fontWeight: FontWeight.w400),
              )),
              Tab(child: Text("History")),
              Tab(child: Text("Draf")),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NoActionsBookings(
              title: 'No Upcoming Order',
              subTitle:
                  'Currently you don’t have any upcoming order. Place and track your orders from here.',
            ),
            NoActionsBookings(
              title: 'History Content',
              subTitle:
                  'Currently you don’t have any order history. Place and track your orders from here.',
            ),
            NoActionsBookings(
              title: 'Draft Content',
              subTitle:
                  'Currently you don’t have any any drafts. Place and track your orders from here.',
            ),
          ],
        ),
      ),
    );
  }
}
