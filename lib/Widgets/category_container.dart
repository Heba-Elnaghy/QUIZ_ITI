import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens.dart/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    super.key,
    required this.index,
  });

  final List quizName = ["Sport Test", "History Test", "General Test"];
  final List quizColor = const [
    Color.fromARGB(255, 142, 140, 140),
    Color.fromARGB(255, 109, 105, 105),
    Color.fromARGB(255, 68, 68, 68)
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const Quiz_Screen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 113, 218, 241)),
            ),
          ),
        ),
      ),
    );
  }
}// TODO Implement this library.