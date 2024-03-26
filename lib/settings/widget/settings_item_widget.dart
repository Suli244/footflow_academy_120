// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';

class SetItWid extends StatelessWidget {
  const SetItWid({
    super.key,
    required this.text,
    required this.onPressed,
    this.isActivPremium = false,
  });
  final String text;
  final Function()? onPressed;
  final bool isActivPremium;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: FaMotion(
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isActivPremium
                ? const Color.fromARGB(255, 244, 229, 89)
                : FaColors.blue003870,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.r),
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: isActivPremium ? Colors.black : FaColors.whate,
                    fontSize: 16.h,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: isActivPremium ? Colors.black : FaColors.whate,
                  size: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
