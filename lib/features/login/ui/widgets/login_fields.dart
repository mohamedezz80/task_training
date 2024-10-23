import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_training/core/extensions/extensions.dart';
import 'package:task_training/core/helpers/spacing.dart';
import 'package:task_training/core/routing/routes.dart';
import 'package:task_training/core/theming/colors.dart';
import 'package:task_training/core/theming/syles.dart';
import 'package:task_training/core/widgets/text_form_field.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {

  late final _formKeyLogin = GlobalKey<FormState>();
  late TextEditingController nameController,
      emailController,
      phoneController,
      categoryController,
      locationController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    categoryController = TextEditingController();
    locationController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    categoryController.dispose();
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKeyLogin,
        child: Column(
          children: [
            AppTextFormField(
              controller: nameController,
              labelText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Name';
                }
              },
            ),
            AppTextFormField(
              controller: emailController,
              labelText: 'Email',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Email';
                }
              },
            ),
            AppTextFormField(
              controller: phoneController,
              labelText: 'Phone Number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Phone';
                }
              },
            ),
            AppTextFormField(
              controller: categoryController,
              labelText: 'Category',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Category';
                }
              },
            ),
            AppTextFormField(
              controller: locationController,
              labelText: 'Location',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Location';
                }
              },
            ),
            verticalSpace(40),
            GestureDetector(
              onTap: () {
                if(_formKeyLogin.currentState!.validate()) {
                  context.pushNamed(Routes.homeScreen);
                }
              },
              child: Container(
                height: 50.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: ColorManager.buttonBlack,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Send',
                    style: MyTextStyle.font18WhiteW700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
