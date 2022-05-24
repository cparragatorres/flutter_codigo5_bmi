import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTapSelectColor = Color(0xff273344);
const kCardColor = Color(0xff1F222B);
const kPrimaryColor = Color(0xffab4fee);

enum Gender { male, female, matasquita, mandarina }

class inputPage extends StatefulWidget {
  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Gender selectedOption = Gender.male;
  int height = 165;

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
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0
                              ),
                            ),
                            Text(
                              "cm",
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                            activeTrackColor: kPrimaryColor,
                            thumbColor: kPrimaryColor,

                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 14.0,
                            ),
                            // overlayShape: RoundSliderThumbShape(
                            //   enabledThumbRadius: 19.0,
                            // ),
                            overlayColor: kPrimaryColor.withOpacity(0.25),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 0.0,
                            max: 200.0,
                            onChanged: (double valueSlider) {
                              height = valueSlider.round();
                              setState(() {});
                            },
                          ),
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
                    childCard: Center(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
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
            color: kPrimaryColor,
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
