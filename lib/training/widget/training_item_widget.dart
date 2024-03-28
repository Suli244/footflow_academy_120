import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/training/model/training_model.dart';

class TrainingItemWidget extends StatelessWidget {
  const TrainingItemWidget({
    super.key,
    required this.model,
    required this.isActivPremium,
  });
  final TrainingModelIyugbcajsca model;
  final bool isActivPremium;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      width: double.infinity,
      height: 190.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 190.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  model.image,
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12.r),
                      margin: EdgeInsets.only(
                        left: 11.w,
                        right: 2.w,
                        bottom: 15.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: FaColors.blue003870.withOpacity(0.60),
                      ),
                      child: Text(
                        model.name,
                        style: TextStyle(
                          fontSize: 15.h,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.r),
                margin: EdgeInsets.only(
                  left: 10.w,
                  right: 9.w,
                  bottom: 15.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: FaColors.blue003870.withOpacity(0.60),
                ),
                child: Image.asset(
                  isActivPremium
                      ? 'assets/icons/training_icon_premium.png'
                      : 'assets/icons/training_icon.png',
                  width: 28.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
