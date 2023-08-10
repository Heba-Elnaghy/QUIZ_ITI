import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/black wall.jpg"),
                  fit: BoxFit.cover)),
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage("assets/images/quiz.jpg")),
              const Text(
                "ITI Quiz App",
                style: TextStyle(
                  color: Color.fromARGB(161, 233, 118, 210),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontFamily: 'Lobster',
                ),
              ),
              const Text(
                "We Are Creative, enjoy our app",
                style: TextStyle(
                  color: Colors.white ,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontFamily: 'Sacramento',
                ),
              ),
              const SizedBox(height: 150),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text("Start", style: TextStyle(fontSize: 30)),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      backgroundColor:
                          Color.fromARGB(255, 189, 87, 157))),
            ],
          ),
        ),
      ),
    );
  
  }
  }