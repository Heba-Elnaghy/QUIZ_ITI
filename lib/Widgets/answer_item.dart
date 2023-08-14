import 'package:flutter/material.dart';

import '../screens/score_screen.dart';

Widget answerItem({
  required BuildContext context,
  required String text,
}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const ScoreScreen(),
        ),
      );
    },
    child: SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.09,
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        color: const Color.fromARGB(255, 101, 169, 199),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontFamily: 'Sacramento',
          ),
        ),
      ),
    ),
  );
}
