import 'package:dice_app/data/services/math_service.dart';

class MathRepo {
  static int getRandomNumber() {
    return MathService.getRandomNumber();
  }
}
