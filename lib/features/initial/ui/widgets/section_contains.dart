import 'package:flutter/material.dart';
import 'package:task_training/core/helpers/spacing.dart';
import 'package:task_training/core/theming/syles.dart';

import 'custom_contains_list_widget.dart';

class SectionContains extends StatelessWidget {
  const SectionContains({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Contains :',
          style: MyTextStyle.font24BlackW900,
        ),
        verticalSpace(20),
        const CustomContainsListWidget(
          text: '60*60 Ceramic',
        ),
        const CustomContainsListWidget(
          text: 'Glc Painting',
        ),
      ],
    );
  }
}
