import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  //1.Constructor
  //2.initState
  //3.build
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        title: Text(
          'Counter :',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    onPressed: () {
                      counter++;
                      setState(() {
                        
                      });
                      print(counter);
                    },
                    child: Text('Plus',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
                SizedBox(width: 10),
                Text(
                  '$counter',
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50)),
                SizedBox(width: 10),
                MaterialButton(
                    onPressed: () {
                      counter--;
                      setState(() {
                        
                      });
                      print(counter);
                    },
                    child: Text('Minus',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
