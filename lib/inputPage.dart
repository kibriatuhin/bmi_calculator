import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'round_icon_button.dart';

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
  int height = 160;
  int weight = 60;
  int age = 19;
  @override
  Widget build(BuildContext context) {

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
                      "HEIGHT",
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
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 250,
                        onChanged: (double heightt) {
                          setState(
                            () {
                              height = heightt.round();
                            },
                          );
                        },
                      ),
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
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("WEIGHT",style: klabelTextStyle,),
                          Text(weight.toString(),style:kNumberTextStyle ,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                iconData: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                iconData: FontAwesomeIcons.plus,
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("AGE",style: klabelTextStyle ,),
                          Text(age.toString(),style:kNumberTextStyle ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(iconData: FontAwesomeIcons.minus, onPressed: (){
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(iconData: FontAwesomeIcons.plus, onPressed: (){
                                setState(() {
                                  age++;
                                });
                              })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color:kactiveCardColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kbottomContainerHeight,
              child: Center(
                child: Text("CALCULATE YOUR BMI",style:TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                  //color: Color(0xFF8D8E98),
                ) ),
              ),
            )
          ],
        ));
  }
}

/*class RoundIconButton extends StatelessWidget {
 final IconData? iconData;
 RoundIconButton({this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

      onPressed: () {  },
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor:Color(0xFF8D8E98),
      child:Icon(iconData) ,

    );
  }
}*/

