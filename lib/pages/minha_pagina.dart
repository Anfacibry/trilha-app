import 'package:flutter/material.dart';

class MinhaPagina extends StatelessWidget {
  const MinhaPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
