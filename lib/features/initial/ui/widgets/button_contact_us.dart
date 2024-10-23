import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/theming/colors.dart';
import 'package:task_training/core/theming/syles.dart';

class ButtonContactUs extends StatelessWidget {
  const ButtonContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 75.h,
          width: 220.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ColorManager.buttonBlack,
          ),
        ),
        Positioned(
          top: 5.h,
          left: 20.w,
          child: Container(
            height: 35.h,
            width: 180.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red,
            ),
          ),
        ),
        Text(
          'CONTACT US',
          style: MyTextStyle.font26WhiteW900,
        ),
      ],
    );
  }
}
