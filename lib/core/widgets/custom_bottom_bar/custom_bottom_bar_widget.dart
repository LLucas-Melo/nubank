import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'atom/indexNavegation_atom.dart';

class CustomBottomBarWidget extends StatefulWidget {
  const CustomBottomBarWidget({Key? key}) : super(key: key);

  @override
  _CustomBottomBarWidgetState createState() => _CustomBottomBarWidgetState();
}

class _CustomBottomBarWidgetState extends State<CustomBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.deepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Cartão', 0, '/home'),
          _buildNavItem(Icons.search, ' Conta', 1, '/'),
          _buildNavItem(Icons.favorite, ' Atividade', 2, '/activity'),
          _buildNavItem(Icons.settings, ' Perfil', 3, '/homePage'),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index, String route) {
    bool isSelected = index == indexNavegation.value;

    return RxBuilder(
      builder: (_) => InkWell(
        onTap: () {
          if (!isSelected) {
            indexNavegation.setValue(index);
            Modular.to.pushNamed(route);
            setState(() {});

            print('clicou $index');
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.white, size: 24),
                AnimatedOpacity(
                  opacity: isSelected ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 300),
                  child: Text(
                    label,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
