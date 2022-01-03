import 'package:flutter/material.dart';

import '../constant.dart';


class BottomButton extends StatelessWidget {
  final String? buttonTitle;
  final VoidCallback? onTap;
  BottomButton({required this.buttonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        /*Navigator.push(context, MaterialPageRoute(builder:(context)=> ResultPage()));*/
      child: Container(
        color: kbottomConatinerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kbottomContainerHeight,
        child: Center(
          child: Text(
              buttonTitle!,
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                  //color: Color(0xFF8D8E98),
                  )),
        ),
      ),
    );
  }
}
