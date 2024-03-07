import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final int diceNumber;
  const DiceWidget({required this.diceNumber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'assets/images/dice_${diceNumber.toString()}.png',
        color: AppColors.white,
      ),
    );
  }
}
