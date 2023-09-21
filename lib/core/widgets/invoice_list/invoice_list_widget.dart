import 'package:flutter/material.dart';

class InvoiceItem {
  final IconData icon;
  final String description;
  final String value;
  final String date;
  final String payment;

  InvoiceItem({
    required this.icon,
    required this.description,
    required this.value,
    required this.date,
    required this.payment,
  });
}

class InvoiceListWidget extends StatefulWidget {
  final List<InvoiceItem> items;

  const InvoiceListWidget({super.key, required this.items});

  @override
  State<InvoiceListWidget> createState() => _InvoiceListWidgetState();
}

class _InvoiceListWidgetState extends State<InvoiceListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        final invoiceItem = widget.items[index];

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
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        invoiceItem.icon,
                        color: Colors.white.withOpacity(0.5),
                        size: 20,
                      ),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          '${invoiceItem.description}',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          '${invoiceItem.value}',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text('${invoiceItem.payment}'),
                      ),
                      SizedBox(),
                      Container(
                        child: Text('${invoiceItem.date}'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
