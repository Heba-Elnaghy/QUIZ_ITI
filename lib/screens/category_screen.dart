import 'package:flutter/material.dart';

import '../Widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final Map<String, dynamic> item = {
    'test1': {
      'text': 'sport text',
      'color': Color.fromARGB(255, 174, 231, 196),
    },
    'test2': {
      'text': 'History Test',
      'color': Color.fromARGB(255, 145, 198, 169),
    },
    'test3': {
      'text': 'General Test',
      'color': Color.fromARGB(255, 96, 168, 120),
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: item.entries
              .map(
                (entry) => CategoryContainer(
                  color: entry.value['color'],
                  text: entry.value['text'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
