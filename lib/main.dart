import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//factorial function
void factorial(int num) {
  //var num = 5;
  var factorial = 1;
  for (var i = num; i >= 1; i--) {
    factorial *= i;
  }
  print("The factorial of $num is" + "$factorial");
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  //variable for string
  var stringdisplay = 'My First Flutter Application learlning';
  void initState() {
    factorial(5);
    factorial(6);
    factorial(7);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 76, 0, 255),
          title: Text(stringdisplay),
        ),
      ),
    );
  }

  // Create a connector

  // Create a connector
}

// This widget is the root of your application.
