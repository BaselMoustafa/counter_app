import 'package:flutter/material.dart';

class CounterText extends StatefulWidget {
  const CounterText({super.key,required this.counterNotifier});

  final ValueNotifier<int> counterNotifier;

  @override
  State<CounterText> createState() => _CounterTextState();
}

class _CounterTextState extends State<CounterText> {

  @override
  void initState() {
    super.initState();
    widget.counterNotifier.addListener(
      (){
        setState(() {
          
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.counterNotifier.value.toString(),
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold
      ),
    );
  }
}