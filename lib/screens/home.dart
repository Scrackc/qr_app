import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/provider/db_provider.dart';
import 'package:qr_reader/provider/ui_provider.dart';
import 'package:qr_reader/screens/screens.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Historial"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    // Obtener el selectedmenuopt
    final uiProvider = Provider.of<UiProvider>(context);

    // todo TEMPORAR LEER LA BD
    DBProvider.db.database;

    switch (uiProvider.selectedMenuOpt) {
      case 0:
        return const MapasScreen();
      case 1:
        return const DireccionesScreen();
      default:
        return MapasScreen();
    }
  }
}
