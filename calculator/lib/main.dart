import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result = 0.0;
  double result2 = 0.0;
  double result3 = 0.0;
  double result4 = 0.0;
  double first = 0.0;
  double second = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text("Calculator"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "first NUMBER",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        first = double.parse(valeus);
                      },
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[50]),
                        hintText: "Second Number",
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        second = double.parse(valeus);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      result = first + second;
                    });
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber[400],
                ),
              ),
              Text(
                "Result : $result",
                style: TextStyle(color: Colors.amber),
              ),
              SizedBox(
                height: 8.0,
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "first NUMBER",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        first = 0;
                        first = double.parse(valeus);
                      },
                    ),
                  ),
                  Icon(
                    Icons.remove,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[50]),
                        hintText: "Second Number",
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        second = 0;
                        second = double.parse(valeus);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      result2 = first - second;
                    });
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber[400],
                ),
              ),
              Text(
                "Result : $result2",
                style: TextStyle(color: Colors.amber),
              ),
              SizedBox(
                height: 8.0,
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "first NUMBER",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        first = 0;
                        first = double.parse(valeus);
                      },
                    ),
                  ),
                  Icon(
                    Icons.dangerous,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[50]),
                        hintText: "Second Number",
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        second = 0;
                        second = double.parse(valeus);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      result3 = first * second;
                    });
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber[400],
                ),
              ),
              Text(
                "Result : $result3",
                style: TextStyle(color: Colors.amber),
              ),
              SizedBox(
                height: 8.0,
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "first NUMBER",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        first = 0;
                        first = double.parse(valeus);
                      },
                    ),
                  ),
                  Text(
                    "div",
                    style: TextStyle(color: Colors.amber),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[50]),
                        hintText: "Second Number",
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[50], width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.amber[200], width: 1.0),
                        ),
                      ),
                      onChanged: (valeus) {
                        second = 0;
                        second = double.parse(valeus);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      result4 = first / second;
                    });
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber[400],
                ),
              ),
              Text(
                "Result : $result4",
                style: TextStyle(color: Colors.amber),
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
