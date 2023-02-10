import 'package:flutter/material.dart';
import 'package:trilha_app/pages/container_azul.dart';
import 'package:trilha_app/pages/container_roso.dart';
import 'package:trilha_app/pages/container_roxo.dart';

class DadosCadastrais extends StatelessWidget {
  final String titulo;
  final List<String> nomes;
  const DadosCadastrais({required this.nomes, required this.titulo, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: PageView(
          children: const [
            ContainerRoxo(),
            ContainerAzul(),
            ContainerRoso(),
          ],
        ));
  }
}
