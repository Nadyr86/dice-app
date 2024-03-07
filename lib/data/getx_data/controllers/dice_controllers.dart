import 'dart:developer' as dev;

import 'package:dice_app/data/repo/math_repo.dart';
import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftNumber = 2.obs;
  RxInt rightNumber = 3.obs;
  RxInt count = 5.obs;

  void getRandomNumber() {
    leftNumber.value = MathRepo.getRandomNumber();
    rightNumber.value = MathRepo.getRandomNumber();
  }
}
