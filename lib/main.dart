import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

doSomething() {
  var array = [1, 2, 3, 4, 5, 6, 7, 8];

  const name2 = "Sadeem";
  const age2 = 20;
  const university2 = "UET";
  const names = ["Zubair", "Sadeem"];
  const ages = [20, 30];
  const universities = ["UET", "FAST"];
  var students = [
    {
      "name": "Zubair",
      "age": 20,
      "university": "UET",
    },
    {
      "name": "Sadeem",
      "age": 30,
      "university": "FAST",
    }
  ];
  print(students[0]);

  const name = "Zubair";
  const age = 20;
  const university = "UET";
// false , true
  if (age > 0 && name != "Zubairs") {
    print("YOU ARE AUTHORIZED");
  } else {
    print("YOU ARE NOT AUTHORIZED");
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  TextEditingController nameController = TextEditingController();
  var myName;
  @override
  void initState() {
    doSomething();
    super.initState();
  }

  @override
  handleChange(value) {
    print(value);
    nameController.text = value;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('My First Application'),
      ),
      body: Container(
        color: Color.fromRGBO(13, 0, 0, 0),
        child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      controller: nameController,
                      onChanged: (value) => handleChange(value),
                      decoration: InputDecoration(
                        labelText: "First Name",
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                      ),
                    ))
              ],
            )),
      ),
    ));
  }
  // Create a connector
// <head>
//   <title>My First Application</title>
//   <link rel="stylesheet" type="text/css" />
// </head>
// <body>
// <div>
//   <h1>INPUT</h1>
// </div>
//   <input>
// </body>
  // Create a connector
}





    
  

  // This widget is the root of your application.


