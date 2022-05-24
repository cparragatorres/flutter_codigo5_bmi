import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inputPage extends StatelessWidget {
  const inputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepPurple,
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //primera fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    childCard: IconContent(
                      flutterIcon: FontAwesomeIcons.mars,
                      flutterText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    childCard: IconContent(
                      flutterIcon: FontAwesomeIcons.venus,
                      flutterText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          //segunda fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    childCard: Container(),
                  ),
                ),
              ],
            ),
          ),
          //tercera fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    childCard: Center(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    childCard: Container(),
                  ),
                ),
              ],
            ),
          ),
          //Boton
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 12.0),
            color: const Color(0xffffab4fee),
            alignment: Alignment.center,
            child: const Text(
              "CALCULATE",
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
