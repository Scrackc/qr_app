import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/provider/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: uiProvider.selectedMenuOpt,
      onTap: (value) => uiProvider.selectedMenuOpt = value,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Maps',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
