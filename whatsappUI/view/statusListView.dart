import 'package:flutter/material.dart';
import 'package:studying/whatsappUI/view/statusCircle.dart';
import 'package:studying/whatsappUI/view/fullScreenStatusView.dart';

class StatusListView extends StatelessWidget {
  final List<Map<String, String>> statusData = [
    {"name": "John Doe", "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3q9O1lr3vhTXJD7Oq7y0EJATknCP3U8f-A&s"},
    {"name": "Jane Smith", "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvRzSGyoPFkAK611PRdY8mApcrkJOHxX_rXw&s"},
    {"name": "Mike Johnson", "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&s"},
    // Add more statuses here
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: statusData.map((status) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullScreenStatusView(
                    statusImages: [
                      status['imageUrl']!,
                      // Add more images if needed
                    ],
                  ),
                ),
              );
            },
            child: Column(
              children: [
                StatusCircle(imageUrl: status['imageUrl']!, percentage: 0.7),
                SizedBox(height: 8.0),
                Text(status['name']!),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
