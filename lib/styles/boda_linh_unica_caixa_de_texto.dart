import 'package:flutter/material.dart';

class BordaLinhaUnicaCixaDeTexto extends StatelessWidget {
  final String label;
  final String? hintText;
  final IconData icone;
  final bool isSenha;
  final TextEditingController controller;
  const BordaLinhaUnicaCixaDeTexto({
    this.hintText,
    required this.label,
    required this.icone,
    required this.isSenha,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      cursorColor: Colors.pink,
      obscureText: isSenha,
      decoration: InputDecoration(
        enabledBorder: bordaUnica(),
        focusedBorder: bordaUnica(),
        prefixIconColor: Colors.pink,
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xCAFFFFFF),
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(
          icone,
          color: Colors.pink,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}

UnderlineInputBorder bordaUnica() => const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.pink,
      ),
    );
