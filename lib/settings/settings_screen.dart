import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/urls.dart';
import 'package:footflow_academy_120/core/web_view.dart';
import 'package:footflow_academy_120/premium/pre_scre.dart';
import 'package:footflow_academy_120/settings/footflow_academy_predm.dart';
import 'package:footflow_academy_120/settings/widget/settings_item_poqjwcmas.dart';
import 'package:share_plus/share_plus.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            FutureBuilder(
                future: getFootflowAcademyPrenmdvdsdsd(),
                builder: (context, snapshot) {
                  if (snapshot.hasData && !snapshot.data!) {
                    return SetItWidughbdjncsdv(
                      text: 'Buy Premium for \$0,99',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PremiumScreen(
                              isClose: true,
                            ),
                          ),
                        );
                      },
                      isActivPremium: true,
                    );
                  }
                  return const SizedBox();
                }),
            SetItWidughbdjncsdv(
              text: 'Terms of Use',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Webjcdvsdvsd(
                      title: 'Terms of Use',
                      url: DocFF.tUse,
                    ),
                  ),
                );
              },
            ),
            SetItWidughbdjncsdv(
              text: 'Pricacy Policy',
              onPressed: () {
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
            SetItWidughbdjncsdv(
              text: 'Share App',
              onPressed: () {
                Share.share(
                    'https://apps.apple.com/us/app/footflow-academy/id6480127914');
              },
            ),
            SetItWidughbdjncsdv(
              text: 'Support',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Webjcdvsdvsd(
                      title: 'Support',
                      url: DocFF.s,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
