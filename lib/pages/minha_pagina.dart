import 'package:flutter/material.dart';
import 'package:trilha_app/components/drawer.dart';

class MinhaPagina extends StatelessWidget {
  const MinhaPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double altura = MediaQuery.of(context).size.height;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawerMinhaPagina(altura: altura, largura: largura),
      appBar: AppBar(
        title: const Text(
          "Minha Pagina",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
