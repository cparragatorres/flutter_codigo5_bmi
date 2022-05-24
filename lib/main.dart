import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI CALCULATOR",
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff13171B),
        ),
        scaffoldBackgroundColor: Color(0xff131918),
        sliderTheme: SliderThemeData(
          activeTrackColor: kPrimaryColor,
          inactiveTrackColor: kTapSelectColor,
          thumbColor: kPrimaryColor,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 14.0,
          ),
          // overlayShape: RoundSliderThumbShape(
          //   enabledThumbRadius: 19.0,
          // ),
          overlayColor: kPrimaryColor.withOpacity(0.25),
        ),
      ),
      home: inputPage(),
    );
  }
}
