import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/helpers/spacing.dart';
import 'package:task_training/features/login/ui/widgets/section_search_and_hello.dart';
import 'package:task_training/features/login/ui/widgets/yellow_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'), // Add your image path
                fit: BoxFit.cover, // Adjust the fit based on your needs
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 50.h,
              bottom: 20.h,
              right: 25.w,
              left: 25.w,
            ),
            child: Column(
              children: [
                const SectionSearchAndHello(),
                verticalSpace(10),
                const YellowContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
