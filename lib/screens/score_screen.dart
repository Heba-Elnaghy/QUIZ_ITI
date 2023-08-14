import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/start_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.25,
          ),
          const Text(
            "Hello,Heba",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontFamily: 'Lobster',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Your score is 6/10",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontFamily: 'Lobster',
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.25),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StartScreen()));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 100),
                backgroundColor: const Color.fromARGB(255, 173, 58, 165),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: const Text("Rest Quiz",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ))),
        ],
      ),
    ));
  }
}
