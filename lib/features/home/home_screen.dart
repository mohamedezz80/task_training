import 'package:flutter/material.dart';
import 'package:task_training/core/theming/colors.dart';
import 'package:task_training/core/theming/syles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainYellow,
      body: Center(
        child: Text(
            'This is Home Screen',
          style: MyTextStyle.font26BlackW900,
        ),
      ),
    );
  }
}
