import 'package:flutter/material.dart';

class CustomBottomBarWidget extends StatefulWidget {
  const CustomBottomBarWidget({Key? key}) : super(key: key);

  @override
  _CustomBottomBarWidgetState createState() => _CustomBottomBarWidgetState();
}

class _CustomBottomBarWidgetState extends State<CustomBottomBarWidget> {
  int _selectedIndex = 0; // Índice do ícone selecionado

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.deepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Cartão', 0),
          _buildNavItem(Icons.search, ' Conta', 1),
          _buildNavItem(Icons.favorite, ' Atividade', 2),
          _buildNavItem(Icons.settings, ' Perfil', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = index == _selectedIndex;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
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
// Espaço entre ícone e rótulo
        ],
      ),
    );
  }
}
