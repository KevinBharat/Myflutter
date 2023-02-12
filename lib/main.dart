import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Damo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Container(
            width: 500,
            child: /*Column(
          children: [
            Text(
              "A",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "B",
              style: TextStyle(fontSize: 25),
            )
          ],
        )*/
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "A",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "B",
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(onPressed: () {}, child: Text("click"))
              ],
            )));
  }
}
