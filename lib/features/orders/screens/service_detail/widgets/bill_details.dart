import 'package:flutter/material.dart';

class BillDetails extends StatelessWidget {
  const BillDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0), // Add padding for spacing
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
        color: Colors.white, // Set background color
      ),
      child: const Column(
        // Arrange widgets vertically
        crossAxisAlignment: CrossAxisAlignment.start, // Align left
        children: [
          Row(
            // First row for Item Total
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item Total',
                style: TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '₹699',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 10.0), // Add spacing between rows
          Row(
            // Second row for Item Discount
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item Discount',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '₹-50', // Negative value for discount
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.green), // Green for discount
              ),
            ],
          ),
          SizedBox(height: 10.0), // Add spacing between rows
          Row(
            // Third row for Service Fee
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Service Fee',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '₹50',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 10.0), // Add spacing between rows
          Row(
            // Fourth row for Grand Total
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Grand Total',
                style: TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '₹749',
                style: TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20.0), // Add spacing for bottom text
          Text(
            'Hurray! You saved ₹50 on final bill',
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.green), // Green for success message
          ),
        ],
      ),
    );
  }
}

