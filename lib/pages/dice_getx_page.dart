import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/data/getx_data/controllers/dice_controllers.dart';
import 'package:dice_app/widgets/dice_page_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetxPage extends StatelessWidget {
  DiceGetxPage({Key? key}) : super(key: key);

  final DiceController _diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        backgroundColor: AppColors.yellow,
        title: Text(
          'Dice GetX app'.toUpperCase(),
          style: AppTextStyles.appBarrTitle,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Obx(() {
        return DicePageContent(
          onTap: () => _diceController.getRandomNumber(),
          leftNumber: _diceController.leftNumber.value,
          rightNumber: _diceController.rightNumber.value,
        );
      }),
    );
  }
}
