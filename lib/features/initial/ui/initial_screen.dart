import 'package:flutter/material.dart';
import 'package:task_training/core/helpers/spacing.dart';
import 'package:task_training/core/theming/colors.dart';
import 'package:task_training/features/initial/ui/widgets/appbar_container.dart';
import 'package:task_training/features/initial/ui/widgets/scroll_widget.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainYellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(1),
          const AppbarContainer(),
          const ScrollWidget(),
        ],
      ),
    );
  }
}