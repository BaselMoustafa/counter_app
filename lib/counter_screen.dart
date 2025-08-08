import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
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

            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold
              ),
            ),

            Spacer(),
      
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed:(){
                      if (counter==0) {
                        return ;
                      }
                      counter = counter-1;
                      setState(() {
                        
                      });
                     
                    } ,
                    child: Text("Decreament"),
                  ),
              
                  ElevatedButton(
                    onPressed:(){
                      counter = 0;
                      setState(() {
                        
                      });

                    } ,
                    child: Text("Reset"),
                  ),
              
                  ElevatedButton(
                    onPressed:(){
                      counter = counter +1;
                      setState(() {
                        
                      });
                    } ,
                    child: Text("Increament"),
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