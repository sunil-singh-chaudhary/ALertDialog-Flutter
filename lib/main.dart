import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AlertDialog Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NewHome());
  }
}

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog demo"),
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text("AlertDialog"),
            style: TextButton.styleFrom(primary: Colors.red),
          ),
        ),
      ),
    );
  }
}
