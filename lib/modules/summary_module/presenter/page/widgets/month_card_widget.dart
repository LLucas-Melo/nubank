import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/invoice_list/invoice_list_widget.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  final controller = PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
//page view with 3 options
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PageView(
              children: [
                _buildMonth(),
                _buildMonth(),
                _buildMonth(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
//motnCardWidget

Widget _buildMonth() {
  final List<InvoiceItem> myItems = [
    InvoiceItem(
        icon: Icons.credit_card,
        description: 'Netflix',
        value: 'R\$ 23,90',
        date: 'Ontem',
        payment: 'Compra no credito'),
    InvoiceItem(
        icon: Icons.credit_card,
        description: 'Amazon',
        value: 'R\$ 14,90',
        date: '16 de Setembro',
        payment: 'Compra no credito'),
    InvoiceItem(
        icon: Icons.credit_card,
        description: 'Steam',
        value: 'R\$ 3500,00',
        date: '21 de Setembro',
        payment: 'Compra no Debito'),
    InvoiceItem(
        icon: Icons.money,
        description: 'Deposito em conta',
        value: 'R\$ 6500,00',
        date: '21 de Setembro',
        payment: 'Credito em Conta'),
    InvoiceItem(
        icon: Icons.credit_card,
        description: 'Plano Claro',
        value: 'R\$ 27,29',
        date: '21 de Setembro',
        payment: 'Compra no Credito'),
    InvoiceItem(
        icon: Icons.credit_card,
        description: 'Spotyfi',
        value: 'R\$ 36,00',
        date: '21 de Setembro',
        payment: 'Compra no Credito'),
  ];
  return InvoiceListWidget(items: myItems);
}
