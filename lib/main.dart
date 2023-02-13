import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/provider/ui_provider.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider(),)
      ],
      child: MaterialApp(
        title: 'QR Reader',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          useMaterial3: true,
          primaryColor: Colors.red,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.red,
            actionsIconTheme: IconThemeData(
              color: Colors.white
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 22
            )
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.red
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.red
          )
        ),
        initialRoute: 'home',
        routes: {
          'home':(_) => const HomeScreen(),
          'mapa':(_) => const MapaScreen()
        },
      ),
    );
  }
}