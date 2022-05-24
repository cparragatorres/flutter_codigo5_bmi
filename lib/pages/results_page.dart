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
                    "Normal",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.greenAccent
                    ),
                  ),
                  Text(
                    "24",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Debes de comer",
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
          NavigatorButton(text: "RE - CALCULATE",
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
          },),
        ],
      ),
    );
  }
}
