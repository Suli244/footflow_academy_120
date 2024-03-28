import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/urls.dart';
import 'package:footflow_academy_120/core/web_view.dart';
import 'package:footflow_academy_120/onbording/widget/onboarding_item_widget.dart';
import 'package:footflow_academy_120/premium/pre_scre.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/onbording/widget/rest_wid.dart';

class FaOnbording extends StatefulWidget {
  const FaOnbording({super.key});

  @override
  State<FaOnbording> createState() => _FaOnbordingState();
}

class _FaOnbordingState extends State<FaOnbording> {
  final PageController controller = PageController();
  int currantPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/obBoar_vse.png',
                    width: 375.w,
                    height: 451.h,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.77,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      currantPage = value;
                    });
                  },
                  children: [
                    const OnBoardingItem(
                      imageOnBoar: 'assets/images/OnBoarding_one.png',
                      titleOnBoar: 'TRAINING',
                      decOnBoar:
                          'Learn everything about football,\ntactics, strategies, rules.',
                    ),
                    OnBoardingItem(
                      imageOnBoar: 'assets/images/OnBoarding_two.png',
                      titleOnBoar: 'PAIRING CALLS',
                      decOnBoar:
                          'Play in pairs and complete various\nfootball challenges.',
                      left: 25.w,
                    ),
                    OnBoardingItem(
                      imageOnBoar: 'assets/images/OnBoarding_three.png',
                      titleOnBoar: 'TRUE OR FALSE',
                      decOnBoar:
                          'Test your knowledge and answer\ninteresting facts.',
                      left: 45.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: FaColors.blue14A0FF,
                    dotColor: const Color.fromARGB(255, 203, 189, 189),
                    dotHeight: 8.h,
                    dotWidth: 9.w,
                  ),
                ),
                SizedBox(height: 30.h),
                FaMotion(
                  onPressed: () {
                    if (currantPage == 2) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PremiumScreen(),
                        ),
                        (protected) => false,
                      );
                    } else {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Container(
                    height: 52.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                      color: FaColors.blue14A0FF,
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
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
                SizedBox(height: 26.h),
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
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
