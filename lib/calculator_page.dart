// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, unused_local_variable

import 'package:dribble_bmi_calculator/calculate_bmi.dart';
import 'package:dribble_bmi_calculator/widget_page.dart';
import 'package:flutter/material.dart';
import 'package:dribble_bmi_calculator/colors.dart';
import 'package:dribble_bmi_calculator/result_page.dart';


class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  
double bmiHeight = 180;
double bmiWeight = 60;
double bmiAnswer = 20;
Color bmiButton = const Color(0xFFff0067);
Color heightWeightContainer = const Color(0xFF141a3c);
Color plusMinusButton = const Color(0xFF212747);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children:  const [
               MaleWidget(),
               FemaleWidget()
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: heightWeightContainer,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Height',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          Text(
            '${bmiHeight.round()}CM',
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
          Slider(
            activeColor: Colors.red,
            inactiveColor: Colors.white,
            value: bmiHeight,
            max: 200,
            label: bmiHeight.round().toString(),
            onChanged: (double value) {
              setState(() {
                bmiHeight = value;
              });
            },
          ),
        ],
      ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children:   [
               Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        decoration: const BoxDecoration(color: Color(0xFF141a3c)),
        child: Column(
          children: [
            const Text(
              'Weight',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${bmiWeight.round()}',
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: plusMinusButton,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            bmiWeight--;
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF212747),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            bmiWeight++;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
                 const AgeContainer(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

           GestureDetector(
      onTap: () {

        setState(() {

          CalculatorBmi calc = CalculatorBmi(height: bmiHeight, weight:bmiWeight);
          
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  ResultPage(bmiResult: calc.calculateBMI(),resultText: calc.bmiResult(),)),
  );

        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 100),
        decoration: BoxDecoration(
          color: bmiButton,
        ),
        child: const Text(
          'Calculate Your Bmi!',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
        )]
        
           
           
      ,
        
      ),
    );
  }
}
