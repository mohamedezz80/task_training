import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/features/initial/ui/widgets/section_contains.dart';
import 'package:task_training/features/initial/ui/widgets/section_images.dart';

import '../../../../core/helpers/spacing.dart';
import 'button_contact_us.dart';
import 'button_package.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 25.w,
        vertical: 16.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ButtonPackage(),
            verticalSpace(16),
            const SectionImages(),
            verticalSpace(16),
            const SectionContains(),
            verticalSpace(16),
            const ButtonContactUs(),
          ],
        ),
      ),
    );
  }
}
