import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/theming/colors.dart';
import 'package:task_training/core/widgets/custom_icon_and_search.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_container.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
      ),
      child: const CustomIconAndSearch(
        colorField: Colors.white,
        colorIconMenue: Colors.white,
        colorIconSearch: ColorManager.suffixBlack,
        colorBorder: Colors.white,
      ),
    );
  }
}
