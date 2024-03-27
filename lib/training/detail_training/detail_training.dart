// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/training/widget/youtube_player_widget_dateil.dart';
import 'package:share_plus/share_plus.dart';

import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/training/model/training_model.dart';

class DetailTraining extends StatelessWidget {
  const DetailTraining({
    super.key,
    required this.modelDetail,
  });
  final TrainingModel modelDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: FaMotion(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              size: 24.w,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          'Video',
          style: TextStyle(
            fontSize: 24.h,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: FaMotion(
              onPressed: () {
                Share.share(modelDetail.name);
              },
              child: Image.asset(
                'assets/icons/share_icon.png',
                height: 25.h,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 40.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                height: 190.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: YoutubePlayeR(
                  url: modelDetail.url,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                modelDetail.name,
                style: TextStyle(
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  height: 0.95,
                ),
              ),
              SizedBox(height: 15.h),
              const Divider(
                thickness: 0.5,
              ),
              SizedBox(height: 10.h),
              Text(
                modelDetail.description,
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
