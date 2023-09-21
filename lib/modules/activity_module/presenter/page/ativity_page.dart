import 'package:asp/asp.dart';
import 'package:flutter/material.dart';

import 'package:nubank/core/widgets/custom_bottom_bar/custom_bottom_bar_widget.dart';
import 'package:nubank/core/widgets/invoice_list/invoice_list_widget.dart';
import 'package:nubank/modules/activity_module/presenter/atom/activity_atom.dart';

class ActivityScreem extends StatefulWidget {
  const ActivityScreem({super.key});

  @override
  State<ActivityScreem> createState() => _ActivityScreemState();
}

class _ActivityScreemState extends State<ActivityScreem> {
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CustomBottomBarWidget(),
      body: Center(
        child: RxBuilder(
          builder: (_) => Column(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(
                      0.5), // Ajuste o valor de opacidade conforme necessário
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/splash.png',
                  height: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ToggleButtons(
                  color: Colors.grey, // Cor de texto quando não selecionado
                  selectedColor: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  selectedBorderColor: Colors.red,
                  isSelected: isSelected.value,
                  onPressed: (int index) {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.value.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected.value[buttonIndex] = true;
                      } else {
                        isSelected.value[buttonIndex] = false;
                      }
                    }
                    setState(() {});
                  },
                  children: [
                    Container(
                      color: Colors.white,
                      width: 120, // Largura maior
                      child: Center(
                        child: Text(
                          'Todas',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 120,
                      child: Center(child: Text('Cartão')),
                    ),
                    Container(
                      color: Colors.white,
                      width: 120,
                      child: Center(child: Text('Conta')),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: InvoiceListWidget(
                  items: myItems,
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
