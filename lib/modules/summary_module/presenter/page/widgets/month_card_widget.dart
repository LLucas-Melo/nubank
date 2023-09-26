import 'package:flutter/material.dart';

class MonthWidget extends StatefulWidget {
  const MonthWidget({super.key});

  @override
  State<MonthWidget> createState() => _MonthWidgetState();
}

class _MonthWidgetState extends State<MonthWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return PageView(
      children: [
        // Primeira página com um ListView
        ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${index + 1} da Página 1'),
            );
          },
        ),
        // Segunda página com um ListView
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${index + 1} da Página 2'),
            );
          },
        ),
      ],
    );
  }
}
