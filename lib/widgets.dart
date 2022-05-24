import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {

  Widget childCard;

  ReusableCard({required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xff1f232c),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: childCard,
    );
  }
}

class IconContent extends StatelessWidget {

  IconData flutterIcon;
  String flutterText;

  IconContent({required this.flutterIcon, required this.flutterText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(flutterIcon,
          size: 60.0,),
        SizedBox(
          height: 10.0,
        ),
        Text(flutterText),
      ],
    );
  }
}