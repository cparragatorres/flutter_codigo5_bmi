import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Text(
            "Results",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ReusableCard(
              childCard: Container(),
              color: kTapSelectColor,
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 12.0),
            color: kPrimaryColor,
            alignment: Alignment.center,
            child: const Text(
              "RE - CALCULATE",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
