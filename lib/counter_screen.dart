import 'package:counter_app/counter_text.dart';
import 'package:counter_app/dec_button.dart';
import 'package:counter_app/inc_button.dart';
import 'package:counter_app/reset_button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  
  ValueNotifier<int> counterNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    print("Build Of Scrennnn=========");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Spacer(),

            CounterText(counterNotifier: counterNotifier),

            Spacer(),
      
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DecButton(
                    counterNotifier: counterNotifier,
                  ),
              
                  ResetButton(
                    counterNotifier: counterNotifier,
                  ),
              
                  IncButton(
                    counterNotifier: counterNotifier,
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}