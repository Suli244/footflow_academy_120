import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Training',
          style: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
