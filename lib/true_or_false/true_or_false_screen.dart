// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/core/fa_motin.dart';
import 'package:footflow_academy_120/true_or_false/widget/gl_cont_wideg.dart';

class TrueOrFalseScreen extends StatefulWidget {
  const TrueOrFalseScreen({super.key});

  @override
  State<TrueOrFalseScreen> createState() => _TrueOrFalseScreenState();
}

class _TrueOrFalseScreenState extends State<TrueOrFalseScreen> {
  int currentIndex = 0;
  bool? isAnswerCorrect;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    listTrFaModel.shuffle();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _handleAnswer(bool answer) {
    final currentModel = listTrFaModel[currentIndex];
    setState(() {
      isAnswerCorrect = currentModel.correctAnswer == answer;
    });

    if (currentIndex < listTrFaModel.length - 1) {
      Future.delayed(const Duration(seconds: 2), () {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      });
    } else {
      Future.delayed(const Duration(seconds: 2), () {
        _pageController.jumpToPage(0);
        listTrFaModel.shuffle();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'True or false',
          style: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.w700,
            color: FaColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.h),
            const GlContWid(),
            SizedBox(height: 16.h),
            Container(
              height: 500.h,
              margin: EdgeInsets.symmetric(horizontal: 24.r),
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                itemCount: listTrFaModel.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                    isAnswerCorrect = null;
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        top: 16.r, left: 16.r, right: 16.r, bottom: 24.r),
                    decoration: BoxDecoration(
                        color: FaColors.grey999999,
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                            image: AssetImage(listTrFaModel[index].image),
                            fit: BoxFit.fill)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            color: FaColors.blue003870.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            listTrFaModel[index].question,
                            style: TextStyle(
                              fontSize: 14.h,
                              fontWeight: FontWeight.w500,
                              color: FaColors.whate,
                            ),
                          ),
                        ),
                        const Spacer(),
                        isAnswerCorrect != null
                            ? isAnswerCorrect == true
                                ? Container(
                                    margin: EdgeInsets.only(bottom: 20.r),
                                    padding: EdgeInsets.all(12.r),
                                    decoration: BoxDecoration(
                                      color: FaColors.green,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'The answer is correct',
                                        style: TextStyle(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w600,
                                          color: FaColors.whate,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    margin: EdgeInsets.only(bottom: 20.r),
                                    padding: EdgeInsets.all(12.r),
                                    decoration: BoxDecoration(
                                      color: FaColors.red,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'The answer is incorrect',
                                        style: TextStyle(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w600,
                                          color: FaColors.whate,
                                        ),
                                      ),
                                    ),
                                  )
                            : const SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: FaMotion(
                                onPressed: () {
                                  _handleAnswer(true);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(12.r),
                                  decoration: BoxDecoration(
                                    color: FaColors.blue14A0FF,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'True',
                                        style: TextStyle(
                                          fontSize: 24.h,
                                          fontWeight: FontWeight.w600,
                                          color: FaColors.whate,
                                        ),
                                      ),
                                      SizedBox(width: 19.w),
                                      Image.asset('assets/images/true.png',
                                          width: 24.w)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 23.w),
                            Expanded(
                              child: FaMotion(
                                onPressed: () {
                                  _handleAnswer(false);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(12.r),
                                  decoration: BoxDecoration(
                                    color: FaColors.blue14A0FF,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'False',
                                        style: TextStyle(
                                          fontSize: 24.h,
                                          fontWeight: FontWeight.w600,
                                          color: FaColors.whate,
                                        ),
                                      ),
                                      SizedBox(width: 19.w),
                                      Image.asset('assets/images/false.png',
                                          width: 24.w)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TrFaModel {
  final String image;
  final String question;
  final bool correctAnswer;
  TrFaModel({
    required this.image,
    required this.question,
    required this.correctAnswer,
  });
}

List<TrFaModel> listTrFaModel = [
  TrFaModel(
      image: 'assets/images/tf1.png',
      question:
          'Football, also known as soccer in some countries, is widely regarded as the most popular sport globally, with billions of fans and participants worldwide.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf2.png',
      question:
          'The FIFA World Cup, the premier international football tournament, is held every four years, with teams from around the world competing for the title.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf3.png',
      question:
          'A red card is issued by the referee to a player for serious fouls or misconduct, resulting in the player being ejected from the game and his team being reduced to 10 players for the remainder of the match.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf4.png',
      question:
          'Football matches are typically divided into two halves, each lasting 45 minutes, with a halftime interval of 15 minutes.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf5.png',
      question:
          "Lionel Messi, widely regarded as one of the greatest footballers of all time, has won the Ballon d'Or award, given to the best player in the world, a record seven times.",
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf6.png',
      question:
          "Offside is called when an attacking player is in an offside position (i.e., closer to the opponent's goal line than both the ball and the second-last defender) at the moment the ball is played to them by a teammate.",
      correctAnswer: false),
  TrFaModel(
      image: 'assets/images/tf7.png',
      question:
          'The Premier League is the top professional football league in England. The top league in Spain is La Liga.',
      correctAnswer: false),
  TrFaModel(
      image: 'assets/images/tf8.png',
      question:
          "A penalty kick is awarded to the attacking team when a foul, such as a trip or a handball, occurs inside the penalty area, giving the attacking team a direct shot on goal from the penalty spot.",
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf9.png',
      question:
          'In football, the goalkeeper is the only player allowed to use their hands and arms to handle the ball, but only within their own penalty area.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf10.png',
      question: 'Правда ли, что Реал Мадрид выиграл Лигу чемпионов 13 раз?"',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf11.png',
      question:
          'Just Fontaine of France scored 13 goals in the 1958 FIFA World Cup, which remains the record for the most goals scored by a single player in a single tournament.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf12.png',
      question:
          "Lionel Messi has won the FIFA Ballon d'Or award 7 times, while Cristiano Ronaldo has won it 5 times.",
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf13.png',
      question:
          'The most goals scored in a single FIFA World Cup tournament is held by Ronaldo Nazário from Brazil.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf14.png',
      question:
          'The term "offside" in football means a player is behind the last defender when the ball is played to them.',
      correctAnswer: false),
  TrFaModel(
      image: 'assets/images/tf15.png',
      question:
          'The Premier League is the top-tier football league in England. La Liga is the top-tier football league in Spain.',
      correctAnswer: false),
  TrFaModel(
      image: 'assets/images/tf16.png',
      question:
          'The most successful national team in FIFA World Cup history is Germany.',
      correctAnswer: false),
  TrFaModel(
      image: 'assets/images/tf17.png',
      question:
          'A hat-trick in football refers to a player scoring three goals in a single match.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf18.png',
      question:
          'Yellow cards in football are given for serious fouls, while red cards result in the player being sent off the field.',
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf19.png',
      question: "The first FIFA Women's World Cup was held in 1991 in China.",
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf20.png',
      question: "The FIFA World Cup is held every four years.",
      correctAnswer: true),
  TrFaModel(
      image: 'assets/images/tf21.png',
      question:
          "The UEFA Champions League is an annual club football competition organized by the Union of European Football Associations (UEFA).",
      correctAnswer: true),
];
