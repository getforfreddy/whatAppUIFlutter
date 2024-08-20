import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatusCircle extends StatelessWidget {
  final String imageUrl;
  final double percentage;

  StatusCircle({required this.imageUrl, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 50.0,
      lineWidth: 4.0,
      percent: percentage,
      center: CircleAvatar(
        radius: 22.0,
        backgroundImage: NetworkImage(imageUrl),
      ),
      progressColor: Colors.green,
      backgroundColor: Colors.grey[300]!,
    );
  }
}
