import 'package:flutter/material.dart';

import 'login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const Image(
              image: AssetImage("assets/images/quiz2.png"),
              height: 200,
              width: 400,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "ITI Quiz App",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'Lobster',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "We Are Creative, enjoy our app",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'Sacramento',
              ),
            ),
            const SizedBox(height: 150),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    backgroundColor: Colors.green),
                child: const Text("Start", style: TextStyle(fontSize: 30))),
          ],
        ),
      ),
    );
  }
}
