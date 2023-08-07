import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;

    void onClicked() {
      counter += 1;
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 15),
              ),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_outlined),
                iconSize: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
