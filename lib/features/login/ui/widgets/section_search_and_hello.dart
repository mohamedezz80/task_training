import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/helpers/spacing.dart';
import 'package:task_training/core/theming/syles.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_icon_and_search.dart';

class SectionSearchAndHello extends StatelessWidget {
  const SectionSearchAndHello({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomIconAndSearch(
          colorField: ColorManager.buttonBlack,
          colorIconMenue: ColorManager.buttonBlack,
          colorIconSearch: Colors.white,
          colorBorder: ColorManager.buttonBlack,
        ),
        verticalSpace(25),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Row(
            children: [
              Text(
                'Hello, Kareem!',
                style: MyTextStyle.font26BlackW900,
              ),
              const Spacer(),
              CircleAvatar(
                radius: 23.w,
                backgroundColor: ColorManager.mainYellow,
                child: const Icon(Icons.person),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
