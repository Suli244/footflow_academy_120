import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';

class GlContWid extends StatelessWidget {
  const GlContWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.r),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20.r, horizontal: 12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: FaColors.whate,
        boxShadow: [
          BoxShadow(
            color: FaColors.grey999999.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Read facts about football and answer true or false',
              style: TextStyle(
                fontSize: 14.h,
                fontWeight: FontWeight.w500,
                color: FaColors.black,
              ),
            ),
          ),
          SizedBox(width: 14.w),
          Image.asset('assets/images/iii.png', width: 56.w)
        ],
      ),
    );
  }
}
