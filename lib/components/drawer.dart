import 'package:flutter/material.dart';

import '../pages/dados_cadastrais.dart';

class DrawerMinhaPagina extends StatelessWidget {
  final double altura, largura;
  const DrawerMinhaPagina({
    required this.altura,
    required this.largura,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Fabricio Cintra"),
            accountEmail: const Text("anfacibry@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: Image.network(
                  "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const DadosCadastrais(
                      titulo: "Meus dados",
                      nomes: ["Bruno", "Fabricio", "Glória"],
                    ),
                  ),
                );
              },
              child: const Text(
                "Dados cadastrais",
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Text("Termos de uso e privacidade"),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Text("DConfigurações"),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
