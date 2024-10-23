import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/theming/colors.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 8.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.circleBlack,
      ),
    );
  }
}
