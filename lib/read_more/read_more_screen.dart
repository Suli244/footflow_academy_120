import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadMoreScreen extends StatelessWidget {
  const ReadMoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Read more',
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
