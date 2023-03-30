

import 'dart:math';

class CalculatorBmi {

  final double height;
  final double weight;

  late double bmiAnswer;

  CalculatorBmi({required this.height , required this.weight });
  
  String calculateBMI(){
     bmiAnswer = weight / pow(height/100, 2);
   return bmiAnswer.toStringAsFixed(1);
  }

  String bmiResult(){
    if (bmiAnswer<18.5){
      return "Underweight";
    }
    else if (bmiAnswer<25){
      return "Normal";
    }
    else {
      return "Not normal";
    }
   
  }
}

