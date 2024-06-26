// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/con_bar.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/pairing_calls/pairing_mt.dart';

class PairingDetaile extends StatefulWidget {
  const PairingDetaile({
    super.key,
  });

  @override
  State<PairingDetaile> createState() => _PairingDetaileState();
}

class _PairingDetaileState extends State<PairingDetaile> {
  late PageController pageController;
  int pageIndex = 0;
  bool changePlayer = true;
  bool isChekStart = false;
  late final oneSecStart = const Duration(seconds: 1);
  Timer timerStart = Timer(Duration.zero, () {});
  String player1 = '';
  String player2 = '';
  Color colorPlayer1 = FaColors.blue003870;
  Color colorPlayer2 = FaColors.blue003870;
  List<PrModel> listPairing = listPr;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    startTimerStart();
    getPlayers();
    super.initState();
  }

  Future<void> getPlayers() async {
    String play1 = await getPlayer1();
    String play2 = await getPlayer2();
    int plcolor1 = await getPlayer1Color();
    int plcolor2 = await getPlayer2Color();
    setState(() {
      player1 = play1;
      player2 = play2;
      colorPlayer1 = Color(plcolor1);
      colorPlayer2 = Color(plcolor2);
    });
  }

  int secondsStart = 0;
  Future<void> startTimerStart() async {
    secondsStart = 3;
    timerStart = Timer.periodic(
      oneSecStart,
      (Timer timer) {
        if (mounted) {
          setState(() {
            secondsStart--;
            if (secondsStart == 0) {
              timer.cancel();
              setState(() {
                isChekStart = true;
              });
            }
          });
        }
      },
    );
  }

  String minutesConvert(int seconds) {
    Duration clockTimer = Duration(seconds: seconds);
    return clockTimer.inSeconds.remainder(60).toString();
  }

  @override
  Widget build(BuildContext context) {
    listPairing.shuffle(Random(10));
    return isChekStart == false
        ? Scaffold(
            backgroundColor: FaColors.blue003870,
            body: Center(
              child: Text(
                minutesConvert(secondsStart),
                style: TextStyle(
                  color: FaColors.blue14A0FF,
                  fontWeight: FontWeight.w700,
                  fontSize: 128.h,
                ),
              ),
            ),
          )
        : Scaffold(
            backgroundColor: changePlayer ? colorPlayer1 : colorPlayer2,
            appBar: AppBar(
              backgroundColor: changePlayer ? colorPlayer1 : colorPlayer2,
              scrolledUnderElevation: 0,
              leading: const BackButton(
                color: Colors.white,
              ),
              title: Text(
                changePlayer ? player1 : player2,
                style: TextStyle(
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 24.h),
                  Expanded(
                    child: PageView.builder(
                      itemCount: 6,
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                      itemBuilder: ((context, index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  listPairing[index].image,
                                ),
                                SizedBox(height: 24.r),
                                Container(
                                  padding: EdgeInsets.all(12.r),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    listPairing[index].text,
                                    style: TextStyle(
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  FaMotion(
                    onPressed: () async {
                      if (pageIndex == 5) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FaBottomBar(
                              indexScr: 2,
                            ),
                          ),
                          (protected) => false,
                        );
                      } else {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                        changePlayer = !changePlayer;
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 24.r),
                      width: MediaQuery.of(context).size.width,
                      height: 52.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: FaColors.blue14A0FF),
                      child: Center(
                        child: Text(
                          pageIndex == 5 ? 'Finish' : 'Next',
                          style: TextStyle(
                            fontSize: 18.h,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          );
  }
}
