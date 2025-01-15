import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagenes",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "mostrar imagenes",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250.0,
                width: 500.0,
                child: Image.asset(
                  "assets/image.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 250.0,
                width: 500.0,
                child: Image.network(
                  "https://i.ibb.co/hDbrkLM/logo-personal.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
