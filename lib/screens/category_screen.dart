import 'package:flutter/material.dart';

import '../Widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final Map<String, dynamic> item = {
    'test1': {
      'text': 'sport text',
      'color': const Color.fromRGBO(68, 68, 68, 1),
    },
    'test2': {
      'text': 'History Test',
      'color': const Color.fromARGB(255, 109, 105, 105),
    },
    'test3': {
      'text': 'General Test',
      'color': const Color.fromRGBO(68, 68, 68, 1),
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
