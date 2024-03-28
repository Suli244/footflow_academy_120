import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/pairing_calls/pairing_calls_screen.dart';
import 'package:footflow_academy_120/read_more/read_more_screen.dart';
import 'package:footflow_academy_120/settings/settings_screen.dart';
import 'package:footflow_academy_120/training/training_oijefewifwefwe.dart';
import 'package:footflow_academy_120/true_or_false/true_or_false_screen.dart';

class FaBottomBarState extends State<FaBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: isActive,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          top: 18.r,
          bottom: 45.r,
        ),
        decoration: const BoxDecoration(
          color: FaColors.whate,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FaMotion(
              onPressed: () => setState(() => isActive = 0),
              child: SvgPicture.asset(
                'assets/icons/training.svg',
                color: isActive == 0 ? null : FaColors.grey999999,
                width: 26.w,
              ),
            ),
            FaMotion(
              onPressed: () => setState(() => isActive = 1),
              child: SvgPicture.asset(
                'assets/icons/true.svg',
                color: isActive == 1 ? null : FaColors.grey999999,
                width: 26.w,
              ),
            ),
            FaMotion(
              onPressed: () => setState(() => isActive = 2),
              child: SvgPicture.asset(
                'assets/icons/pairing.svg',
                color: isActive == 2 ? null : FaColors.grey999999,
                width: 26.w,
              ),
            ),
            FaMotion(
              onPressed: () => setState(() => isActive = 3),
              child: SvgPicture.asset(
                'assets/icons/read.svg',
                color: isActive == 3 ? null : FaColors.grey999999,
                width: 25.w,
              ),
            ),
            FaMotion(
              onPressed: () => setState(() => isActive = 4),
              child: SvgPicture.asset(
                'assets/icons/settings.svg',
                color: isActive == 4 ? null : FaColors.grey999999,
                width: 25.w,
              ),
            ),
          ],
        ),
      ),
    );
  }

  late int isActive = widget.indexScr;
  final _pages = <Widget>[
    const TrainingScreen(),
    const TrueOrFalseScreen(),
    const PairingCallsScreen(),
    const ReadMoreScreen(),
    const SettingsScreen(),
  ];
}

class FaBottomBar extends StatefulWidget {
  const FaBottomBar({super.key, this.indexScr = 0});
  final int indexScr;

  @override
  State<FaBottomBar> createState() => FaBottomBarState();
}
