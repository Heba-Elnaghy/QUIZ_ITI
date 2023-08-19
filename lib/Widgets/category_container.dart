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
    return Column(
      children: [
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const QuizScreen(),
              ),
            );
          },
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                color: color,
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(120),
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}// TODO Implement this library.