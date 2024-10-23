import 'package:flutter/material.dart';
import 'package:task_training/core/helpers/spacing.dart';

class SectionImages extends StatelessWidget {
  const SectionImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            'assets/images/decorative.PNG',
        ),
        verticalSpace(20),
        SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
                'assets/images/hotel.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
