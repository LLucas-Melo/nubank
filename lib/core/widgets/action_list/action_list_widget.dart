import 'package:flutter/material.dart';

class ActionListWidget extends StatefulWidget {
  const ActionListWidget({super.key});

  @override
  State<ActionListWidget> createState() => _ActionListWidgetState();
}

class _ActionListWidgetState extends State<ActionListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.white.withOpacity(0.5),
            size: 20,
          ),
          title: Text(
            'Item $index',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 12,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white.withOpacity(0.5),
            size: 12,
          ),
          onTap: () {
            // Ação a ser realizada quando o item for clicado
            print('Item $index foi clicado');
          },
        );
      },
    );
  }
}
