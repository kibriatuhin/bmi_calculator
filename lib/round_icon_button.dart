import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback  onPressed;
  RoundIconButton({required this.iconData ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

      onPressed: onPressed,
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
}

