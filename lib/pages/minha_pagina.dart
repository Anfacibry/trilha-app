import 'package:flutter/material.dart';
import 'package:trilha_app/pages/dados_cadastrais.dart';

class MinhaPagina extends StatelessWidget {
  const MinhaPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double altura = MediaQuery.of(context).size.height;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: altura * .05,
            left: largura * .01,
            right: largura * .01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
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
              const Divider(),
              const Text("Termos de uso e privacidade"),
              const Divider(),
              const Text("DConfigurações"),
              const Divider(),
            ],
          ),
        ),
      ),
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
