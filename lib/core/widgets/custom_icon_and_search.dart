import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/syles.dart';

class CustomIconAndSearch extends StatelessWidget {
  final Color colorIconSearch, colorIconMenue, colorBorder, colorField;
  const CustomIconAndSearch({super.key, required this.colorIconSearch, required this.colorIconMenue, required this.colorField, required this.colorBorder});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/menu.png',
          color: colorIconMenue,
          width: 60.w,
          height: 60.h,
        ),
        horizontalSpace(20),
        SizedBox(
          width: 240.w,
          //height: 100.h,
          child: TextFormField(
            obscureText: false,
            decoration: InputDecoration(
              filled: true,
              fillColor: colorField,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.w, vertical: 1.h,
              ),
              hintText: 'Search here ...',
              hintStyle: MyTextStyle.font14GreyW500,
              suffixIcon: Icon(
                Icons.search_rounded,
                color: colorIconSearch,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorBorder,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorBorder,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
