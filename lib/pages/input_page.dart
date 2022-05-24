import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/results_page.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTapSelectColor = Color(0xff273344);
const kCardColor = Color(0xff1F222B);
const kPrimaryColor = Color(0xffab4fee);

enum Gender { male, female, matasquita, mandarina }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedOption = Gender.male;
  int height = 165;
  int weight = 75;
  int age = 23;

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
                    color: selectedOption == Gender.male
                        ? kTapSelectColor
                        : kCardColor,
                    childCard: IconContent(
                      flutterIcon: FontAwesomeIcons.mars,
                      flutterText: "MALE",
                    ),
                    onTap: () {
                      selectedOption = Gender.male;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedOption == Gender.female
                        ? kTapSelectColor
                        : kCardColor,
                    childCard: IconContent(
                      flutterIcon: FontAwesomeIcons.venus,
                      flutterText: "FEMALE",
                    ),
                    onTap: () {
                      selectedOption = Gender.female;
                      setState(() {});
                    },
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
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40.0),
                            ),
                            Text(
                              "cm",
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 0.0,
                          max: 200.0,
                          onChanged: (double valueSlider) {
                            height = valueSlider.round();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
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
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Kg",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButtonContent(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                weight--;
                                setState((){});
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            IconButtonContent(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                weight++;
                                setState((){});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButtonContent(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                age--;
                                setState((){});
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            IconButtonContent(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                age++;
                                setState((){});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Boton
          NavigatorButton(
            text: "CALCULATE",
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
            },
          ),
        ],
      ),
    );
  }
}
