import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

/*
 Color maleCardColor = inactiveCardColor;
 Color femaleCardColor = inactiveCardColor;
 //update color
 void updateColor(Gender selectedGender){
   //for male
   if(selectedGender == Gender.male){
     if(maleCardColor == inactiveCardColor){
       maleCardColor = activeCardColor;
       femaleCardColor = inactiveCardColor;
     }else{
       maleCardColor = inactiveCardColor;
     }
   }
   //for female
   if(selectedGender == Gender.female){
     if(femaleCardColor == inactiveCardColor){
       femaleCardColor = activeCardColor;
       maleCardColor = inactiveCardColor;
     }else{
      femaleCardColor = inactiveCardColor;
     }
   }
 }
*/

  @override
  Widget build(BuildContext context) {
    double height = 160;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF090C22),
          centerTitle: true,
          title: Text("BMI Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.male
                            ? kactiveCardColor
                            : kinactiveCardColor,
                        cardChild: IconContent(
                          lavel: "MALE",
                          icon: FontAwesomeIcons.male,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.female
                            ? kactiveCardColor
                            : kinactiveCardColor,
                        cardChild: IconContent(
                          lavel: "FEMALE",
                          icon: FontAwesomeIcons.female,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Height",
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          "cm",
                          style: klabelTextStyle,
                        ),
                        Slider(
                            value: height,
                            min: 100,
                            max: 250,
                            divisions: 5,
                            //label: '$height',
                            label:height.round().toString() ,

                            activeColor: Color(0xFFEB1555),
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (heightt){
                              setState(() {
                                height = heightt;
                                print(height);
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kbottomConatinerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kbottomContainerHeight,
            )
          ],
        ));
  }
}
