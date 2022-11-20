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
        body: OutlinedButton(
          child: Text('Outlined here'),
          onPressed: () {
            print("Text Button Tappad!");
          },
        )
        /*ElevatedButton(
          child: Text(' Elevated here'),
          onPressed: () {
            print("Text Button Tappad!");
          },
        )
       TextButton(
          child: Text('Click here'),
          onPressed: () {
            print("Text Button Tappad!");
          },
          onLongPress: () {
            print("LongPress!s!");
          },
        ),**/

        );
  }
}
