import 'package:flutter/material.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final Color color;
  final String text;

  const CategoryContainer({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height / 3,
        decoration: BoxDecoration(
            color: color, border: Border.all(width: 1, color: Colors.black)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 35,
              color: Color.fromARGB(255, 113, 218, 241),
            ),
          ),
        ),
      ),
    );
  }
}// TODO Implement this library.