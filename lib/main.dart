import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = true;

  void changeMode() {
    setState(() {
      if (_isDarkMode) {
        _isDarkMode = false;
      } else {
        _isDarkMode = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: _isDarkMode ? Colors.black : Colors.white,
          child: Container(
            child: Center(
              child: RaisedButton(
                onPressed: () {
                  changeMode();
                },
                color: _isDarkMode ? Colors.white : Colors.black,
                child: Padding(
                  child: Text(
                    _isDarkMode ? "Light" : "Dark",
                    style: TextStyle(
                      color: _isDarkMode ? Colors.black : Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
