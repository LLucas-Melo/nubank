import 'package:flutter/material.dart';

class ActionItem {
  final IconData icon;
  final String description;
  final void Function() onPressed;

  ActionItem(
      {required this.icon, required this.description, required this.onPressed});
}

class ActionListWidget extends StatefulWidget {
  final List<ActionItem> items;

  const ActionListWidget({super.key, required this.items});

  @override
  State<ActionListWidget> createState() => _ActionListWidgetState();
}

class _ActionListWidgetState extends State<ActionListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        final actionItem = widget.items[index];

        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.1)),
                )),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  leading: Icon(
                    actionItem.icon,
                    color: Colors.white.withOpacity(0.5),
                    size: 20,
                  ),
                  title: Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      '${actionItem.description}',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.5),
                    size: 12,
                  ),
                  onTap: actionItem.onPressed,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
