import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/widgets/dice_widgets.dart';
import 'package:flutter/material.dart';

class DicePageContent extends StatefulWidget {
  final GestureTapCallback onTap;
  final int leftNumber;
  final int rightNumber;
  const DicePageContent(
      {required this.onTap, required this.leftNumber, required this.rightNumber, Key? key})
      : super(key: key);

  @override
  _DicePageContentState createState() => _DicePageContentState();
}

class _DicePageContentState extends State<DicePageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          splashColor: AppColors.goldDark,
          onTap: widget.onTap,
          child: Row(
            children: [
              DiceWidget(
                diceNumber: widget.rightNumber,
              ),
              SizedBox(
                width: 25,
              ),
              DiceWidget(diceNumber: widget.leftNumber)
            ],
          ),
        ),
      ),
    );
  }
}
