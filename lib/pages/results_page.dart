import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/bmi_brain.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';

class ResultPage extends StatelessWidget {
  int height = 0;
  int weight = 0;

  ResultPage({
    required this.height,
    required this.weight,
  });

  BMIBrain? bmiBrain;

  @override
  Widget build(BuildContext context) {
    bmiBrain = BMIBrain(weight: weight, height: height);
    print(bmiBrain!.calculateBMI());

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Results",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiBrain!.getResults(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.greenAccent),
                  ),
                  Text(
                    bmiBrain!.calculateBMI().toStringAsFixed(2),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiBrain!.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              color: kTapSelectColor,
            ),
          ),
          NavigatorButton(
            text: "RE - CALCULATE",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
          ),
        ],
      ),
    );
  }
}
