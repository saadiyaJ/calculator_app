import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:states/models/calculator_state.dart';

final calculatorProvider =
    StateNotifierProvider<CalculatorNotifier, CalculatorState>((ref) {
  return CalculatorNotifier();
});

class CalculatorNotifier extends StateNotifier<CalculatorState> {
  CalculatorNotifier() : super(CalculatorState.Initial());

  void sum() {
    int result =
        int.parse(state.firstNumber.text) + int.parse(state.secondNumber.text);
    state = state.copyWith(
      result: result,
    );
  }

  void minus() {
    int result =
        int.parse(state.firstNumber.text) - int.parse(state.secondNumber.text);
    state = state.copyWith(
      result: result,
    );
  }

  void multiply() {
    int result =
        int.parse(state.firstNumber.text) * int.parse(state.secondNumber.text);
    state = state.copyWith(
      result: result,
    );
  }

  void divide() {
    double result =
        int.parse(state.firstNumber.text) / int.parse(state.secondNumber.text);
    state = state.copyWith(
      result: (result.toInt()),
    );
  }
}
