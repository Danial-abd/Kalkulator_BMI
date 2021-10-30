import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Color(0xff0a0e21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: Colors.lightGreen, tinggi: 200.0, lebar: 200.0),
                ),
                Expanded(
                    child: ReusableCard(
                        colour: Colors.blueAccent,
                        tinggi: 180.0,
                        lebar: 150.0)),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                      colour: Colors.deepPurple, tinggi: 100.0, lebar: 150.0)),
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        colour: Colors.blueAccent,
                        tinggi: 150.0,
                        lebar: 100.0)),
                Expanded(
                    child: ReusableCard(
                        colour: Colors.blueGrey, tinggi: 200.0, lebar: 200.0)),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    colour: Colors.cyan, tinggi: 250.0, lebar: 200.0),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour, required this.tinggi, required this.lebar});

  Color colour;
  double tinggi, lebar;
  // const ReusableCard({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xff1d1e33),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),

      width: lebar,
      height: tinggi,
    );
  }
}
