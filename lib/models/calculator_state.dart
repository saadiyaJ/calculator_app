import 'package:flutter/material.dart';

class CalculatorState {
  final int result;
  final TextEditingController firstNumber;
  final TextEditingController secondNumber;

  CalculatorState(
      {required this.result,
      required this.firstNumber,
      required this.secondNumber});

  factory CalculatorState.Initial() {
    return CalculatorState(
      result: 0,
      firstNumber: TextEditingController(text: "0"),
      secondNumber: TextEditingController(text: "0"),
    );
  }

  CalculatorState copyWith({
    int? result,
    TextEditingController? firstNumber,
    TextEditingController? secondNumber,
  }) {
    return CalculatorState(
      result: result ?? this.result,
      firstNumber: firstNumber ?? this.firstNumber,
      secondNumber: firstNumber ?? this.secondNumber,
    );
  }
}
