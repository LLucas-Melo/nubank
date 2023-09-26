// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/core/widgets/action_list/action_list_widget.dart';

import '../../../../core/widgets/credit_card/credit_card_widget.dart';
import '../../../../core/widgets/custom_bottom_bar/custom_bottom_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ActionItem> myItems = [
    ActionItem(
      icon: Icons.credit_card,
      description: 'Resumo da fatura',
      onPressed: () {
        Modular.to.pushNamed('/summary');
      },
    ),
    ActionItem(
        icon: Icons.mail,
        description: 'Limite disponivel',
        onPressed: () {
          Modular.to.pushNamed('/limit');
        }),
    ActionItem(
      icon: Icons.mail,
      description: 'Pagar Fatura',
      onPressed: () {},
    ),
    ActionItem(
      icon: Icons.mail,
      description: 'Cartão virtual',
      onPressed: () {},
    ),
    ActionItem(
      icon: Icons.mail,
      description: 'Antecipar parcelas',
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: CustomBottomBarWidget(),
        body: Center(
          child: Column(
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
              CreditCardWidget(backgroundColor: Colors.deepPurple),
              Expanded(
                  child: ActionListWidget(
                items: myItems,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
