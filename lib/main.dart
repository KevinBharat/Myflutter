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
        body: Center(
            child: InkWell(
          onTap: () {
            print("ontab");
          },
          onDoubleTap: () {
            print("onDoubleTab");
          },
          onLongPress: () {
            print("onLongTab");
          },
          child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(
                child: InkWell(
                  onTap: () {
                    print("Text Widget Tapped");
                  },
                  child: Text(
                    "Click here",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                  ),
                ),
              )),
        )));
  }
}
