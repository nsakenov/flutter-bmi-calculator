import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const Color cardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

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
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardColor: cardColor,
                  cardChild: IconContent(
                      icon: Icon(FontAwesomeIcons.mars, size: 80),
                      label: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: cardColor,
                  cardChild: IconContent(
                    icon: Icon(FontAwesomeIcons.venus, size: 80),
                    label: 'FEMALE',
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(cardColor: cardColor),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(cardColor: cardColor),
              ),
              Expanded(
                child: ReusableCard(cardColor: cardColor),
              )
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerHeight,
        )
      ]),
    );
  }
}
