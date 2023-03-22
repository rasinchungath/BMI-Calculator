import 'dart:math';

class CalculateBMI{

  CalculateBMI({
    required this.height, required this.weight
  });

  final int height;
  final int weight;
  late double _bmi;


  String bmiResult(){

    _bmi= weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
    
  }


  String getResult(){
    if (_bmi>=25) {
      return 'overweight';
      
    }else if(_bmi>18){
      return 'normal';

    }else{
      return 'underweight';
    }
  }

  String getInterpretation(){
     if (_bmi>=25) {
      return 'You have a higher body weight, you should exercise more!';
      
    }else if(_bmi>18){
      return 'You have a normal body weight, Good job!';

    }else{
      return  'You have an under body weight, you should eat more!';
    }

  }

}