import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key, required this.counterNotifier});

  final ValueNotifier<int> counterNotifier;

  @override

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        counterNotifier.value = 0;
      },
      child: Text("Reset"),
    );
  }
}