import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:states/controller/calculator_notifier.dart';

class Calculator extends ConsumerStatefulWidget {
  const Calculator({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CalculatorState();
}

class _CalculatorState extends ConsumerState<Calculator> {
  @override
  Widget build(BuildContext context) {
    final calculatorNotifier = ref.read(calculatorProvider.notifier);
    final calculatorState = ref.watch(calculatorProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            //for result
            const Text(
              "Result is ",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              calculatorState.result.toString(),
              style: const TextStyle(fontSize: 30),
            ),

            //for input
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: TextField(
                    controller: calculatorState.firstNumber,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: TextField(
                    controller: calculatorState.secondNumber,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //for sum, - , * , /
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => calculatorNotifier.sum(),
                    child: const Icon(Icons.add)),
                ElevatedButton(
                  onPressed: () => calculatorNotifier.minus(),
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => calculatorNotifier.multiply(),
                  child: const Text("x"),
                ),
                ElevatedButton(
                  onPressed: () => calculatorNotifier.divide(),
                  child: const Text("/"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
