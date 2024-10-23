import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/theming/syles.dart';

import '../../../../core/helpers/spacing.dart';
import 'custom_circle.dart';

class CustomContainsListWidget extends StatelessWidget {
  final String text;
  const CustomContainsListWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: Row(
        children: [
          const CustomCircle(),
          horizontalSpace(7),
          Text(
            text,
            style: MyTextStyle.font19BlackW900,
          ),
        ],
      ),
    );
  }
}
