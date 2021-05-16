import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});
  final String label;
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
          label,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
