
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String appName = "Catálogo de Películas";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: HomeScreen(appName: appName),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String appName;

  const HomeScreen({Key? key, required this.appName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.movie, size: 80, color: Colors.white),
                SizedBox(height: 20),
                Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  appName,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
