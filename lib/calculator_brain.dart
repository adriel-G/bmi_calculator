import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'dart:math';

class CalculatorBrain {
  //Class for Calculator
  CalculatorBrain(
      {required this.weight,
      required this.height}); //constructor (what is required to create an object of this class)

  final int height; //variable named height declared as an interger
  final int weight; //variable

  late double _bmi; //variable

  String calculateBMI() {
    //method to calculate bmi
    _bmi = ((weight / (height * height)) * 703); //algo
    return _bmi.toStringAsFixed(
        1); //converts the float into a string with one fixed decimal spot
  }

  String getResult() {
    //method to get results in text - self explanatory
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    //method to get text on bottom - self explanatory
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.  Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.  Good job!';
    } else {
      return 'You have a lower than normal body weight. You should eat more.';
    }
  }
}
