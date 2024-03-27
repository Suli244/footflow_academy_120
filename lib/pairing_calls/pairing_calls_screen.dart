import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/pairing_calls/pairing_detaile.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import for shared_preferences

import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';

class PairingCallsScreen extends StatefulWidget {
  const PairingCallsScreen({super.key});

  @override
  State<PairingCallsScreen> createState() => _PairingCallsScreenState();
}

class _PairingCallsScreenState extends State<PairingCallsScreen> {
  Color buttonColor = FaColors.blue14A0FF; // Initial button color

  Future<void> _saveColor(Color color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('buttonColor', color.value); // Save as integer
  }

  Future<Color> _loadColor() async {
    final prefs = await SharedPreferences.getInstance();
    final int? value = prefs.getInt('buttonColor');
    return value != null ? Color(value) : FaColors.blue14A0FF; // Default color
  }

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
                color:
                    buttonColor, // Use the saved color for Player 1 container
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
            FaMotion(
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PairingDetaile()));
                // buttonColor = FaColors.green;

                // await _saveColor(buttonColor);

                // setState(() {});
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 52.h,
                decoration: BoxDecoration(
                  color: buttonColor, // Use the saved color for the button
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
