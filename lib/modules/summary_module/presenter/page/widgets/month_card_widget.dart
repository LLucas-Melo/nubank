import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/widgets/invoice_list/invoice_list_widget.dart';
import '../../atom/summary_atom.dart';
import 'month_buttom.widget.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  final summaryAtom = Modular.get<SummaryAtom>();
  @override
  Widget build(BuildContext context) {
    const List<String> months = [
      'Janeiro',
      'Fevereiro',
      'Março',
      'Abril',
      'Maio',
      'Junho',
      'Julho',
      'Agosto',
      'Setembo',
      'Outubro',
      'Novembro',
      'Dezembro'
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RxBuilder(builder: (_) {
            return SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: months.length,
                itemBuilder: (context, index) {
                  final month = months[index];
                  return RxBuilder(
                    builder: (_) => SizedBox(
                        width: 100,
                        child: (months[index] == index &&
                                summaryAtom.isSelected.value == true)
                            ? DualButton(
                                text: month,
                                isActive: true,
                              )
                            : DualButton(
                                text: month,
                              )),
                  );
                },
              ),
            );
          }),
        ),
        SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PageView.builder(
              controller: summaryAtom.controller.value,
              itemCount: months.length,
              itemBuilder: (context, index) {
                return _buildMonth();
              },
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
