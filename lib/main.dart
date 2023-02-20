import 'package:flutter/material.dart';
import 'package:trilha_app/services/inicializacao_hive.dart';

import 'pages/home_principal.dart';

void main() {
  ///Inicializa o hive
  WidgetsFlutterBinding.ensureInitialized();

  ///Pega o caminho do diretório
  InicializandoHive.diretorio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trilha App",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFF101C27),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: const HomePrincipal(),
    );
  }
}
