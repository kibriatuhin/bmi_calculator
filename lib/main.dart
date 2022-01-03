import 'dart:math';

import 'package:flutter/material.dart';
import 'screens/inputPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()=> {
  runApp(const MyApp())
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        //scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),

      );

  }
}


/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ROLL THE DICE',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({required Key key, required this.title}) : super(key: key);
  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dice2D dice1 = new Dice2D(
    size: 150.0,
    displayInt: 2,
  );

  updateDice({ double? size,  int? displayInt}) {
    setState(() {
      if(size != null) dice1.size = size;
      if(displayInt != null) dice1.displayInt = displayInt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Slider(
            value: dice1.size,
            min: 100.0,
            max: 200.0,
            onChanged: (value){
              updateDice(size: value);
            },),
          DiceWidget(dice1.size, dice1.displayInt, updateDice),
        ],
      ),
    );
  }
}

class DiceWidget extends StatelessWidget {

  final int _number;
  final double _size;
  final Function _onPressed;

  DiceWidget(this._size, this._number, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(
        onPressed: (){
          _onPressed(displayInt: Random().nextInt(5)+1);
        },
        child: Text("$_number", style: TextStyle(fontSize: _size),)),);
  }
}

class Dice2D {
  var size;
  var displayInt;

  Dice2D({this.size,this.displayInt});
}*/
