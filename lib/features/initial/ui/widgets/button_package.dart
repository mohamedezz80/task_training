import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/extensions/extensions.dart';
import 'package:task_training/core/routing/routes.dart';
import 'package:task_training/core/theming/colors.dart';
import 'package:task_training/core/theming/syles.dart';

class ButtonPackage extends StatelessWidget {
  const ButtonPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 4.h,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFD2A43C),
              Color(0xFFEAE09B),
              Color(0xFF95642C),
            ],
            stops: [0.0, 0.5, 1.0], // Adjust stops as needed
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Container(
          height: 90.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.buttonBlack,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
                'Gold Package',
              style: MyTextStyle.font24YellowW700,
            ),
          ),
        ),
      ),
    );
  }
}
