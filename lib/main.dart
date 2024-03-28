import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/urls.dart';
import 'package:footflow_academy_120/splash/splash_screen.dart';

import 'package:apphud/apphud.dart';

void main() async {
  runApp(const MyApp());
  await Apphud.start(apiKey: DocFF.vdsrferwe);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FootFlow Academy',
        home: child,
        theme: ThemeData(
          fontFamily: 'Inter',
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          scaffoldBackgroundColor: FaColors.whate,
          appBarTheme: const AppBarTheme(
            backgroundColor: FaColors.whate,
          ),
        ),
      ),
      child: const SplashScreen(),
    );
  }
}
