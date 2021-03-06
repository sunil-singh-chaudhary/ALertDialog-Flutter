import 'package:alertdialogflutter/CustomDialogBox.dart';
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ShowAlertDialog(context);
                      },
                      child: Text("Normal alertdialog")),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomDialogBox();
                          },
                        );
                      },
                      child: Text("Custom alertdialog")),
                  ElevatedButton(
                      onPressed: () {
                        ShowAlertDialog(context);
                      },
                      child: Text("Advance custom alertdialog")),
                ],
              ),
            )));
  }

  void ShowAlertDialog(BuildContext context) {
    var alertdialog = const AlertDialog(
      title: Text("alert dialog "),
      content: Text('ow you trip'),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertdialog);
  }

  void ShowAlertDialogCustom(BuildContext context) {}
}
