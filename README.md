# Calculator App with Riverpod and MVC Pattern

<img src="https://github.com/saadiyaJ/calculator_app/blob/main/screenshots/calculator_app.png" alt="App Screenshot" width="200" height="370">

## Introduction
This is a beginner-level Flutter project that demonstrates my learnings of how to  use Riverpod for state management and how to follow the MVC (Model-View-Controller) architectural pattern. 
The app showcases basic functionality and serves as a portfolio project to demonstrate my Flutter development skills.

## Features

### Arithmetic Operations:

1. Addition (+): Allow users to add numbers.
2. Subtraction (-): Enable subtraction of numbers.
3. Multiplication (×): Support multiplication of numbers.
4. Division (÷): Allow users to divide numbers.

## Screenshots

<img src="https://github.com/saadiyaJ/calculator_app/blob/main/screenshots/calculator_app_demo.gif" alt="App Demo" width="200" height="350">

## Getting Started
Follow these steps to get a copy of the project up and running on your local machine.

### Prerequisites

1. Flutter
2. Dart
3. Flutter Riverpod Version (2.3.6)

### Installation

A step-by-step guide on how to clone and set up your project locally:

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Install dependencies.
4. Run the app.

#### MVC Pattern

The MVC (Model-View-Controller) pattern is implemented in my app like the following:

1. Model: 
   In the code, the Model is represented by the CalculatorState class.
   - Responsibilities: The Model represents the application's data and business logic. 
   It encapsulates the current state of the calculator, including the result, first number, and second number. The responsibilities of the Model include:
   Storing the calculator's state, such as the result and input numbers.
   Providing methods for creating, updating, and copying the state.
   Handling the initialization of the calculator's state with default values.
   - Example Usage: In the code, the CalculatorState class manages the state of the calculator, including the current result and input numbers.
   
2. View: 
   In the code, the View is represented by the Calculator widget and its associated UI components.
   - How it Presents Data to the User: The View's primary role is to present the user interface (UI) to the user and display the data from the Model. It includes various UI elements such as text fields, buttons, and text widgets for displaying the result. The View renders the current state of the calculator, allowing the user to see and interact with the numbers and operators.
   - Example Usage: In the code, the Calculator widget builds the UI for the calculator, displaying the result and allowing users to input numbers and perform calculations.
   
3. Controller:
   In the code, the Controller is represented by the CalculatorNotifier class.
   - How it Manages User Input and Interacts with Model and View:
   The Controller is responsible for handling user input and business logic. It defines methods like sum, minus, multiply, and divide that perform calculations based on user actions (e.g., button presses).
   It interacts with the Model (CalculatorState) to retrieve and update the calculator's state. When a calculation is performed, the Controller updates the Model's state.
   The Controller communicates with the View to trigger UI updates when the Model's state changes. For example, it updates the displayed result in the UI after performing a calculation.
   - Example Usage: In the code, the CalculatorNotifier class manages the calculator's logic. It calculates the result based on user actions, updates the Model's state, and triggers UI updates in the View.




## Riverpod State Management

1. What is Riverpod: 
   Riverpod is a versatile and developer-friendly state management solution for Flutter.

2. State Management:  
    In the code, state management occurs by creating and declaring providers like calculatorProvider. These providers encapsulate the app's state and logic.
    You access the state and logic within your widgets using the ref object and then perform actions and updates.

3. Providers: 
   - Sample code:
StateNotifierProvider<CalculatorNotifier, CalculatorState> (calculatorProvider):
   Purpose: This is a StateNotifierProvider that provides an instance of the CalculatorNotifier class, which extends StateNotifier. 
   It manages the calculator's state and logic.

4. Sample Code:

   final calculatorProvider =
   StateNotifierProvider<CalculatorNotifier, CalculatorState>((ref) {
   return CalculatorNotifier();
   });

## Acknowledgments
1. The Flutter Framework.
2. Fellow [alfaresof](https://github.com/alfaresof) tutorials on the fundamentals of The Flutter Framework.

## Contact
Reach out to me at saadiyajehar@gmail.com
