import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';

class PairingCallsScreen extends StatelessWidget {
  const PairingCallsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pairing calls',
          style: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.all(12.r),
              width: MediaQuery.of(context).size.width,
              height: 150.h,
              decoration: BoxDecoration(
                color: FaColors.blue003870,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaMotion(
                    child: Image.asset(
                      'assets/icons/edit.png',
                      height: 24.h,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Player 1',
                      style: TextStyle(
                        fontSize: 24.h,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
            const Spacer(),
            //////Button Start!////////
            FaMotion(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 52.h,
                decoration: BoxDecoration(
                  color: FaColors.blue14A0FF,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: Text(
                    'Start!',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
