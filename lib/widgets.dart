import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  Widget childCard;
  Color color;
  Function? onTap;

  ReusableCard({
    required this.childCard,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null
          ? () {
              onTap!();
            }
          : null,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: childCard,
      ),
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
        FaIcon(
          flutterIcon,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(flutterText),
      ],
    );
  }
}

class IconButtonContent extends StatelessWidget {
  const IconButtonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kPrimaryColor,
      constraints: BoxConstraints.tightFor(
        width: 35.0,
        height: 35.0,
      ),
      child: FaIcon(FontAwesomeIcons.plus),
      onPressed: () {

      },
    );
  }
}
