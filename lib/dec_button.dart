import 'package:flutter/material.dart';

class DecButton extends StatelessWidget {
  const DecButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Decreament"),
    );
  }
}