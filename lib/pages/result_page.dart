import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? resultText; //underweight
  final String? bmiCalculatedResult; //22
  final String? resultDetail; //'You are underweight'

  ResultPage(
      {super.key,
      required this.resultText,
      required this.bmiCalculatedResult,
      required this.resultDetail});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                myColor: inActiveCardColor,
                cardChild: Column(
                  children: [
                    Text(resultText!),
                    Text(bmiCalculatedResult!),
                    Text(resultDetail!)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
