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
        body: const Center(
          child: Text(
            'Our first Flutter layout',
            style: TextStyle(fontSize: 24),
          ),
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
