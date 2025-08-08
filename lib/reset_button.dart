import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      child: Text("Reset"),
    );
  }
}