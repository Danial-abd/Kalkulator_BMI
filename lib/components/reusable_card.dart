import 'package:flutter/material.dart';
import 'package:bmi_calculator_praktikum_k/screens/input_pages.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {this.cardChild, @required this.colour, this.onPress}); //Color colour;
  //double tinggi, lebar;
  final Widget cardChild;
  final Color colour;
  final Function onPress;
  //const ReusableCard({
  //Key? key,
  //}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          //color: Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
