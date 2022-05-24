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
          backgroundColor: Colors.greenAccent,
        )
      ),
      home: inputPage(),
    );
  }
}
