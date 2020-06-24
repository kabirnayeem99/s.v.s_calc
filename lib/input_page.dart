import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_card.dart';

const double bottomContainerHeight = 60.0;

// colors
const Color activeColor = Color(0xff1b1b1b);
const Color inactiveColor = Color(0xff0a0a0a);
const Color bottomContainerColor = Color(0xffff4301);
const Color textColor = Colors.white60;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      } else {
        maleCardColor = inactiveColor;
        femaleCardColor = activeColor;
      }
    } 
    if (gender == 2) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      } else {
        femaleCardColor = inactiveColor;
        maleCardColor = activeColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "শরীর ভর সূচক",
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState( () {
                          updateColor(1);
                          }
                        );
                      },
                      child: ReusableCard(
                        color: maleCardColor,
                        child: GenderCard(
                          icon: FontAwesomeIcons.mars,
                          gender: "ছেলে",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState( () {
                          updateColor(2);
                          }
                        );
                      },
                      child: ReusableCard(
                        color: femaleCardColor,
                        child: GenderCard(
                          icon: FontAwesomeIcons.venus,
                          gender: "মেয়ে",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: activeColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(),
            ),
          ],
        ),
      ),
    );
  }
}
