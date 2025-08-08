import 'package:flutter/material.dart';

class IncButton extends StatelessWidget {
  const IncButton({
    super.key,
    required this.counterNotifier,
  });

  final ValueNotifier<int>counterNotifier;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        counterNotifier.value = counterNotifier.value +1;
      },
      child: Text("Increament"),
    );
  }
}