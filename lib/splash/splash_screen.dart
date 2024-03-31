import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/con_bar.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/onbording/onbording.dart';
import 'package:footflow_academy_120/splash/swim_money_page.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    firstOpen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FaColors.blue003870,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/icons/logo.png',
              width: 127.w,
              height: 166.h,
            ),
          ),
        ],
      ),
    );
  }

  firstOpen() async {
    final swimprefs = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(milliseconds: 700));
    if (swimprefs.containsKey('swimKey')) {
      final cachedswimLink = swimprefs.getString('swimKey') ?? '';
      if (cachedswimLink.isEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const FaBottomBar(
              indexScr: 0,
            ),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => SwimMoneyPage(
              link: cachedswimLink,
            ),
          ),
        );
      }
    } else {
      final swimfbResponse = await Dio().get(
        'https://b-footflow-academy-default-rtdb.firebaseio.com/footflow.json?auth=AIzaSyD1Eg4D9EAcw5NIP4ZajZ_kg-4IgIZHqfk',
      );
      String? swimpath = swimfbResponse.data['path'] as String?;

      if (swimpath != null && swimpath.isNotEmpty) {
        if (swimpath.contains('(click_id)')) {
          final oneSignalSubscriptionId = OneSignal.User.pushSubscription.id;
          swimpath = swimpath.replaceAll('(click_id)',
              '$oneSignalSubscriptionId:89b3b667-5e17-41a5-8a6e-2a9560c53322');
        }
        swimpath = await swimGetRealLink(swimpath);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (_) => SwimMoneyPage(link: swimpath!)));
      } else {
        swimprefs.setString('swimKey', '');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const FaOnbording(),
          ),
        );
      }
      await Future.delayed(const Duration(seconds: 7));
      try {
        final InAppReview inAppReview = InAppReview.instance;

        if (await inAppReview.isAvailable()) {
          inAppReview.requestReview();
        }
      } catch (e) {
        throw Exception(e);
      }
    }
  }
}

Future<String> swimGetRealLink(String swimUrl) async {
  final swimRealLink = await Dio().get(swimUrl);

  return swimRealLink.realUri.toString();
}
