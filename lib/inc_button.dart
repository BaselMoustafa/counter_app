import 'package:flutter/material.dart';

class IncButton extends StatelessWidget {
  const IncButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Increament"),
    );
  }
}