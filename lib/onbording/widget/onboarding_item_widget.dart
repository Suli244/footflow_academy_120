import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:footflow_academy_120/core/fa_colors.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.imageOnBoar,
    required this.titleOnBoar,
    required this.decOnBoar,
    this.left,
  });
  final String imageOnBoar;
  final String titleOnBoar;
  final String decOnBoar;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: left ?? 0),
          child: Center(
            child: FittedBox(
              child: Image.asset(
                imageOnBoar,
                width: 270.w,
                height: 415.h,
              ),
            ),
          ),
        ),
        SizedBox(height: 60.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  titleOnBoar,
                  style: TextStyle(
                    fontSize: 40.h,
                    fontWeight: FontWeight.w900,
                    color: FaColors.blue003870,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              FittedBox(
                child: Text(
                  decOnBoar,
                  style: TextStyle(
                    fontSize: 18.h,
                    fontWeight: FontWeight.w400,
                    color: FaColors.blue003870,
                    height: 1.25.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
