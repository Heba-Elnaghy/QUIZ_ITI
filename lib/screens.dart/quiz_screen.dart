import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens.dart/score_screen.dart';

class Quiz_Screen extends StatelessWidget {
  const Quiz_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 101, 169, 199),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("General Test"),
            Image.asset("assets/images/test.png", width: 50, height: 50),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.09,
            ),
            Card(
              color: Color.fromARGB(255, 22, 136, 175),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              elevation: 25,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.15,
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      children: [
                        Text(
                          "Question 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: 'Lobster',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "what is the capital of france?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: 'Sacramento',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.08,
            ),
            Text(
              "choices is:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'Lobster',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Score_Screen(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.09,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 169, 199),
                  borderRadius: BorderRadius.circular(60.0),
                ),
                child: Center(
                  child: Text(
                    "Paris",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'Sacramento',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Score_Screen(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.09,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 169, 199),
                  borderRadius: BorderRadius.circular(60.0),
                ),
                child: Center(
                  child: Text(
                    "London",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'Sacramento',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Score_Screen(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.09,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 169, 199),
                  borderRadius: BorderRadius.circular(60.0),
                ),
                child: Center(
                  child: Text(
                    "Mosco",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'Sacramento',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Score_Screen(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.09,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 169, 199),
                  borderRadius: BorderRadius.circular(60.0),
                ),
                child: Center(
                  child: Text(
                    "Roma",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'Sacramento',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
