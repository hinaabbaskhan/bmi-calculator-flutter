import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          //first Expanded
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: inActiveCardColor,
                    cardChild: IconContent(
                      text: 'MALE',
                      myIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: inActiveCardColor,
                    cardChild: IconContent(
                      text: 'FEMALE',
                      myIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                )
              ],
            ),
          ),
          //Second Expanded
          Expanded(
            child: ReusableCard(myColor: inActiveCardColor),
          ),
          //Third Expanded
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  myColor: inActiveCardColor,
                  cardChild: Column(
                    children: [],
                  ),
                )),
                Expanded(child: ReusableCard(myColor: inActiveCardColor))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
