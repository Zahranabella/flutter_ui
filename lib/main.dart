import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter UI Succinctly'),
        ),
        body: Container(
          margin: const EdgeInsets.all(100),
          padding: const EdgeInsets.all(50),
          decoration: const BoxDecoration(
              color: Colors.lightGreen,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topRight: Radius.elliptical(50, 50),
                topLeft: Radius.circular(20),
                bottomRight: Radius.elliptical(25, 25),
              )),
          child: const Text('Container'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ac_unit),
          onPressed: () {
            // ignore: avoid_print
            print('Oh, it is cold outside ...');
          },
        ),
      ),
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          brightness: Brightness.light),
    );
  }
}
