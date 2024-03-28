import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/con_bar.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/core/urls.dart';
import 'package:footflow_academy_120/core/web_view.dart';
import 'package:footflow_academy_120/onbording/widget/rest_wid.dart';
import 'package:footflow_academy_120/settings/footflow_academy_predm.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key, this.isClose = false});
  final bool isClose;
  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool vssqwwd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/premium.png',
                width: 375.w,
                height: 380.h,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FaMotion(
                      onPressed: () {
                        if (widget.isClose) {
                          Navigator.pop(context);
                        } else {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaBottomBar(
                                indexScr: 0,
                              ),
                            ),
                            (protected) => false,
                          );
                        }
                      },
                      child: Image.asset(
                        'assets/icons/close_premi.png',
                        width: 26.w,
                      ),
                    ),
                    SizedBox(width: 24.w),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 45.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    'PREMIUM',
                    style: TextStyle(
                      fontSize: 40.h,
                      fontWeight: FontWeight.w900,
                      color: FaColors.blue003870,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/galochka.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 12.w),
                    FittedBox(
                      child: Text(
                        'Get access to all articles in the \n“Read more” section',
                        style: TextStyle(
                          fontSize: 18.h,
                          fontWeight: FontWeight.w400,
                          color: FaColors.blue003870,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/galochka.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'No advertising',
                      style: TextStyle(
                        fontSize: 18.h,
                        fontWeight: FontWeight.w400,
                        color: FaColors.blue003870,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.h),
                FaMotion(
                  onPressed: () async {
                    setState(() {
                      vssqwwd = true;
                    });
                    final apphudPaywalls = await Apphud.paywalls();
                    // print(apphudPaywalls?.paywalls.first.products?.first);
                    await Apphud.purchase(
                      product: apphudPaywalls?.paywalls.first.products?.first,
                    ).whenComplete(
                      () async {
                        if (await Apphud.hasPremiumAccess() ||
                            await Apphud.hasActiveSubscription()) {
                          await setFootflowAcademyPrenmdvdsdsd();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const FaBottomBar(),
                            ),
                            (route) => false,
                          );
                        }
                      },
                    );
                    setState(() {
                      vssqwwd = false;
                    });
                  },
                  child: Container(
                    height: 52.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                      color: FaColors.blue14A0FF,
                    ),
                    child: Center(
                      child: vssqwwd
                          ? const CupertinoActivityIndicator(
                              color: Colors.white)
                          : Text(
                              'Buy Premium for \$0,99',
                              style: TextStyle(
                                fontSize: 18.h,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 0,
                              ),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 33.h),
                RestBut(
                  onPressTerOfSer: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Webjcdvsdvsd(
                          title: 'Terms of Service',
                          url: DocFF.tUse,
                        ),
                      ),
                    );
                  },
                  onPressRest: () {},
                  onPressPriPol: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Webjcdvsdvsd(
                          title: 'Privacy Policy',
                          url: DocFF.pP,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
