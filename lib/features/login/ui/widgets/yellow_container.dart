import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_training/core/extensions/extensions.dart';
import 'package:task_training/core/theming/syles.dart';
import 'package:task_training/features/login/ui/widgets/login_fields.dart';

import '../../../../core/theming/colors.dart';

class YellowContainer extends StatelessWidget {
  const YellowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: 20.w,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.mainYellow,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 16.h,
                    right: 15.w,
                    left: 20.w
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special Request?\nNo Problem!',
                      style: MyTextStyle.font18BlackW700,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.xmark,
                        size: 30.w,
                        color: ColorManager.buttonBlack,
                      ),
                    ),
                  ],
                ),

              ),
              const LoginFields(),
            ],
          ),
        ),
      ),
    );
  }
}
