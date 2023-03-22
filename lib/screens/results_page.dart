import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.result,
      required this.interpretation});
  final String bmiResult;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: result == 'overweight'
                          ? overWeightTextStyle
                          : (result == 'underweight'
                              ? underWeightTextStyle
                              : resultTextStyle),
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextStyle,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Normal BMI Range:',
                          style: rangeTextStyle,
                        ),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            ontap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
