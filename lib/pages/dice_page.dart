import 'dart:math';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/data/repo/math_repo.dart';
import 'package:dice_app/widgets/dice_page_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _leftNumber = 1;
  int _rightNumber = 5;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.yellow,
        appBar: AppBar(
          backgroundColor: AppColors.yellow,
          title: Text(
            'Dice app'.toUpperCase(),
            style: AppTextStyles.appBarrTitle,
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: DicePageContent(
            onTap: _getRandomNumber,
            leftNumber: _leftNumber,
            rightNumber: _rightNumber));
  }

  void _getRandomNumber() {
    _rightNumber = MathRepo.getRandomNumber();
    _leftNumber = MathRepo.getRandomNumber();
    setState(() {});
  }

  void ozgort() {
    setState(() {});
    _leftNumber = random.nextInt(6) + 1;
    _rightNumber = random.nextInt(6) + 1;
  }
}
