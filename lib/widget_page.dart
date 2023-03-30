

// ignore_for_file: must_be_immutable

import 'package:dribble_bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:dribble_bmi_calculator/calculate_bmi.dart';


class MaleWidget extends StatefulWidget {
 const MaleWidget({super.key});

  @override
  State<MaleWidget> createState() => _MaleWidgetState();
}

class _MaleWidgetState extends State<MaleWidget> {

  bool isSelected = false;
  Color gendercontainerColor = const Color(0xFF242848);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30, right: 0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            gendercontainerColor =
                isSelected ? Colors.grey : const Color(0xFF242848);
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 32),
          decoration: BoxDecoration(
            color: gendercontainerColor,
          ),
          child: Column(
            children: const [
              Icon(
                Icons.male,
                color: Colors.white,
                size: 50,
              ),
              Text(
                'Male',
                style: TextStyle(fontSize: 32, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FemaleWidget extends StatefulWidget {
  const FemaleWidget({super.key});

  @override
  State<FemaleWidget> createState() => _FemaleWidgetState();
}

class _FemaleWidgetState extends State<FemaleWidget> {
  Color gendercontainerColor = const Color(0xFF242848);

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 30,
        right: 10,
      ),
      child: GestureDetector(
        onTap: () {
          isSelected = !isSelected;
            gendercontainerColor =
                isSelected ? Colors.grey : const Color(0xFF242848);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          decoration: BoxDecoration(
            color: gendercontainerColor,
          ),
          child: Column(
            children: const [
              Icon(
                Icons.male,
                color: Colors.white,
                size: 50,
              ),
              Text(
                'Female',
                style: TextStyle(fontSize: 32, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeightContainer extends StatefulWidget {
  const HeightContainer({super.key});

  @override
  State<HeightContainer> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightContainer> {
  double bmiHeight = 0;

  Color heightWeightContainer = const Color(0xFF141a3c);
  

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class WeightContainer extends StatefulWidget {
  const WeightContainer({super.key});

  @override
  State<WeightContainer> createState() => _WeightContainerState();
}

class _WeightContainerState extends State<WeightContainer> {
  Color plusMinusButton = const Color(0xFF212747);
  double bmiWeight = 65;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class AgeContainer extends StatefulWidget {
  const AgeContainer({super.key});

  @override
  State<AgeContainer> createState() => _AgeContainerState();
}

class _AgeContainerState extends State<AgeContainer> {
  Color plusMinusButton = const Color(0xFF212747);

  int _age = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 32),
        decoration: const BoxDecoration(color: Color(0xFF141a3c)),
        child: Column(
          children: [
            const Text(
              'Age',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$_age',
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: plusMinusButton,
                  ),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          _age--;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: plusMinusButton,
                  ),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          _age++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


