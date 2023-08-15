import 'package:flutter/material.dart';

class CreditCardWidget extends StatefulWidget {
  final Color backgroundColor;

  final bool isAcount;

  const CreditCardWidget({
    super.key,
    required this.backgroundColor,
    this.isAcount = false,
  });

  @override
  State<CreditCardWidget> createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState extends State<CreditCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backgroundColor,
      elevation: 10,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: MediaQuery.sizeOf(context).height * 0.25,
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: (widget.isAcount == true) ? _buildACount() : _buildCredit(),
      ),
    );
  }

  Widget _buildCredit() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.payment),
              Text('Fatura'),
              Spacer(),
              Text('R\$'),
              Text("1234,00")
            ],
          ),
          Text('Lucas Melo'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('****'),
              Text('****'),
              Text('****'),
              Text('****'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildACount() {
    return Container();
  }
}
