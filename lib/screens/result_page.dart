import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'inputPage.dart';


class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({required this.bmiResult , required this.resultText , required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Your Result",style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
                child: ReusableCard(
                  color: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText , style: kResultTextStyle,),
                    Text(bmiResult,style: kBMITextStyle,),
                    Text(interpretation,textAlign: TextAlign.center, style: kBodyextStyle,),

                  ],
                ),)
            ),
            BottomButton(
              buttonTitle: "RE-CALCULATE",
              onTap: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
            ),

          ],
        ));
  }
}
