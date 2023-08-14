import 'package:flutter/material.dart';

import '../Widgets/answer_item.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 169, 199),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("General Test"),
            Image.asset("assets/images/test.png", width: 50, height: 50),
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.09,
            ),
            Card(
              color: const Color.fromARGB(255, 22, 136, 175),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              elevation: 25,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.15,
                    width: MediaQuery.sizeOf(context).width,
                    child: const Column(
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
            const Text(
              "choices is:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'Lobster',
              ),
            ),
            answerItem(text: 'Paris', context: context),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            answerItem(text: 'London', context: context),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            answerItem(text: 'Mosco', context: context),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            answerItem(text: 'Roma', context: context),
          ],
        ),
      ),
    );
  }
}
