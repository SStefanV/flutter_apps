import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const containerBgColor = Color(0xFF1D1E33);
const inactivCardColor = Color(0xFF141320);
const bottomBgColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactivCardColor;
  Color femaleCardColor = inactivCardColor;
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactivCardColor) {
        maleCardColor = containerBgColor;
        femaleCardColor = inactivCardColor;
      } else {
        maleCardColor = inactivCardColor;
      }
    } else {
      if (gender == Gender.female) {
        if (femaleCardColor == inactivCardColor) {
          femaleCardColor = containerBgColor;
          maleCardColor = inactivCardColor;
        } else {
          femaleCardColor = inactivCardColor;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        text: 'MALE',
                        iconType: FontAwesomeIcons.mars,
                      ),
                      colour: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        text: 'FEMALE',
                        iconType: FontAwesomeIcons.venus,
                      ),
                      colour: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: containerBgColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: containerBgColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: containerBgColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomBgColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
