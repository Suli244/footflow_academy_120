import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/urls.dart';
import 'package:footflow_academy_120/splash/splash_screen.dart';

import 'package:apphud/apphud.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.initialize('89b3b667-5e17-41a5-8a6e-2a9560c53322');
  await OneSignal.Notifications.requestPermission(true);
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
