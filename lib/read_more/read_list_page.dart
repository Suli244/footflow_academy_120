import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/read_more/read_content.dart';

class ReadListPage extends StatelessWidget {
  const ReadListPage(
      {super.key, required this.appBarTitle, required this.listModel});
  final String appBarTitle;
  final List<ReadModel> listModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
