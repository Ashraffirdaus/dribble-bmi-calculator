// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({required this.bmiResult, required this.resultText });

  final String bmiResult;
  final String resultText;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Color scaffolBackgroundColor = const Color(0xFF0f1335);

  Color appBarColor = const Color(0xFF13153b);

  Color gendercontainerColor = const Color(0xFF242848);

  Color bmiButton = const Color(0xFFff0067);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffolBackgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text(
          'BMI RESULT',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 40),
            child: Text(
              'Your Result',
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                color: gendercontainerColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Text(
                    widget.resultText,
                    style: const TextStyle(fontSize: 50 , color: Colors.green),
                  ),
                  Text(
                    widget.bmiResult, 
                    style: const TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  
                ],
              ),
            ),
            
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 120),
                  decoration: BoxDecoration(
            color: bmiButton,
                  ),
                  child: const Text(
            'Re-CALCULATE',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
