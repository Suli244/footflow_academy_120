import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/pairing_calls/pairing_detaile.dart';
import 'package:footflow_academy_120/pairing_calls/widget/player1_widget.dart';
import 'package:footflow_academy_120/pairing_calls/widget/player2_widget.dart';

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
            const Player1Container(),
            SizedBox(height: 24.h),
            const Player2Container(),
            const Spacer(),
            //////Button Start!////////
            FaMotion(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PairingDetaile(),
                  ),
                );
              },
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
