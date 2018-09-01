import 'package:flutter/material.dart';

main() => (runApp(Task_1_Solution()));

class Task_1_Solution extends StatefulWidget {
  @override
  _Task_1_SolutionState createState() => _Task_1_SolutionState();
}

class _Task_1_SolutionState extends State<Task_1_Solution> {
  int counter = 0;

  void _add() => setState(() {
        ++counter;
      });

  void _subtract() => setState(() {
        if(counter <= 0)
          counter = 0;
        else
          counter --;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _add();
              },
            ),
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  _subtract();
                })
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'I am $counter times awesome',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              FlatButton(
                color: Colors.yellow,
                child: Text('Reset'),
                onPressed: () => setState(() => counter = 0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
