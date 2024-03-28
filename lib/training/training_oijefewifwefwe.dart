import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/settings/footflow_academy_predm.dart';
import 'package:footflow_academy_120/training/detail_training/detail_training.dart';
import 'package:footflow_academy_120/training/model/training_model.dart';
import 'package:footflow_academy_120/training/widget/training_item_widget.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Training',
          style: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16.h),
          FutureBuilder(
              future: getFootflowAcademyPrenmdvdsdsd(),
              builder: (context, snapshot) {
                bool chekP = snapshot.data ?? false;
                return Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      final inde = trainingList.elementAt(index);
                      return FaMotion(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailTraining(
                                modelDetail: inde,
                              ),
                            ),
                          );
                        },
                        child: TrainingItemWidget(
                          model: inde,
                          isActivPremium: index > 3 && !chekP,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 12.h),
                    itemCount: trainingList.length,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
