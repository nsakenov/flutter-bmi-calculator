import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  cardChild: IconWidget(
                      icon: Icon(FontAwesomeIcons.mars, size: 80),
                      iconText: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: cardColor,
                  cardChild: IconWidget(
                    icon: Icon(FontAwesomeIcons.venus, size: 80),
                    iconText: 'FEMALE',
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

class IconWidget extends StatelessWidget {
  IconWidget({@required this.icon, this.iconText});
  final String iconText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon, //Icon(FontAwesomeIcons.mars, size: 80)
        SizedBox(
          height: 15,
        ),
        Text(
          iconText,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild});
  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
