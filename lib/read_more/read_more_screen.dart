import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/read_more/read_content.dart';
import 'package:footflow_academy_120/read_more/read_list_page.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            SizedBox(height: 48.h),
            Text(
              'What do you want to\nknow about?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.h,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 24.h),
            FaMotion(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadListPage(
                      appBarTitle: 'Popular players',
                      listModel: listPlayers,
                    ),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64.h,
                decoration: BoxDecoration(
                  color: FaColors.blue14A0FF,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Popular players',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            FaMotion(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadListPage(
                      appBarTitle: 'Popular trainers',
                      listModel: listTrainers,
                    ),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64.h,
                decoration: BoxDecoration(
                  color: FaColors.blue14A0FF,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Popular trainers',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            FaMotion(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadListPage(
                      appBarTitle: 'Best clubs in the world',
                      listModel: listBest,
                    ),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64.h,
                decoration: BoxDecoration(
                  color: FaColors.blue14A0FF,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Best clubs in the world',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            FaMotion(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadListPage(
                      appBarTitle: 'Football records',
                      listModel: listFootball,
                    ),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64.h,
                decoration: BoxDecoration(
                  color: FaColors.blue14A0FF,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Football records',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
