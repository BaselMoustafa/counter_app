import 'package:flutter/material.dart';

class DecButton extends StatelessWidget {
  const DecButton({
    super.key,
    required this.counterNotifier,
  });

  final ValueNotifier<int> counterNotifier;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
         if (counterNotifier.value==0) {
          return ;
        }
        counterNotifier.value = counterNotifier.value-1;
      },
      child: Text("Decreament"),
    );
  }
}