import 'dart:math';

class MathService{
  static int getRandomNumber (){
    return Random().nextInt(6) + 1;
  }
}