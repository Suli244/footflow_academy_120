import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/pairing_calls/pairing_mt.dart';

class Player1Container extends StatefulWidget {
  const Player1Container({
    super.key,
  });

  @override
  State<Player1Container> createState() => _Player1ContainerState();
}

class _Player1ContainerState extends State<Player1Container> {
  String playerName = '';
  int indexColor = 0;
  @override
  void initState() {
    getPlayers();
    super.initState();
  }

  Future<void> getPlayers() async {
    String pl = await getPlayer1();
    setState(() {
      playerName = pl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      width: MediaQuery.of(context).size.width,
      height: 150.h,
      decoration: BoxDecoration(
        color: FaColors.blue003870,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaMotion(
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  TextEditingController controllerText =
                      TextEditingController();
                  return CupertinoAlertDialog(
                    title: const Text('Player 1'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Write the name'),
                        const SizedBox(height: 8),
                        CupertinoTextField(
                          controller: controllerText,
                          placeholder: 'Enter',
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFFEEEAEA),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text('Select color'),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaMotion(
                              onPressed: () {
                                setState(() {
                                  indexColor = 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: indexColor == 1
                                    ? FaColors.grey999999
                                    : Colors.transparent,
                                child: const CircleAvatar(
                                  radius: 14,
                                  backgroundColor: FaColors.purple,
                                ),
                              ),
                            ),
                            FaMotion(
                              onPressed: () {
                                setState(() {
                                  indexColor = 2;
                                });
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: indexColor == 2
                                    ? FaColors.grey999999
                                    : Colors.transparent,
                                child: const CircleAvatar(
                                  radius: 14,
                                  backgroundColor: FaColors.blue003870,
                                ),
                              ),
                            ),
                            FaMotion(
                              onPressed: () {
                                setState(() {
                                  indexColor = 3;
                                });
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: indexColor == 3
                                    ? FaColors.grey999999
                                    : Colors.transparent,
                                child: const CircleAvatar(
                                  radius: 14,
                                  backgroundColor: FaColors.red,
                                ),
                              ),
                            ),
                            FaMotion(
                              onPressed: () {
                                setState(() {
                                  indexColor = 4;
                                });
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: indexColor == 4
                                    ? FaColors.grey999999
                                    : Colors.transparent,
                                child: const CircleAvatar(
                                  radius: 14,
                                  backgroundColor: FaColors.green,
                                ),
                              ),
                            ),
                            FaMotion(
                              onPressed: () {
                                setState(() {
                                  indexColor = 5;
                                });
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: indexColor == 5
                                    ? FaColors.grey999999
                                    : Colors.transparent,
                                child: const CircleAvatar(
                                  radius: 14,
                                  backgroundColor: FaColors.yellow,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    actions: [
                      CupertinoDialogAction(
                        child: const Text(
                          'Exit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: FaColors.blue14A0FF,
                          ),
                        ),
                        onPressed: () async {
                          if (controllerText.text.isNotEmpty) {
                            Navigator.of(context).pop();
                            await setPlayer1(controllerText.text);
                          }
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Image.asset(
              'assets/icons/edit.png',
              height: 24.h,
            ),
          ),
          Center(
            child: Text(
              playerName,
              style: TextStyle(
                fontSize: 24.h,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
