import 'package:flutter/material.dart';

class CaixaDeTextoLogin extends StatefulWidget {
  final String label;
  final String? hintText;
  final IconData icone;
  final bool isSenha;
  final TextEditingController controller;
  const CaixaDeTextoLogin({
    this.hintText,
    required this.isSenha,
    required this.label,
    required this.icone,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<CaixaDeTextoLogin> createState() => _CaixaDeTextoLoginState();
}

class _CaixaDeTextoLoginState extends State<CaixaDeTextoLogin> {
  bool mostrarSenha = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: widget.controller,
      cursorColor: Colors.pink,
      obscureText: mostrarSenha,
      decoration: InputDecoration(
        enabledBorder: bordaUnica(),
        focusedBorder: bordaUnica(),
        prefixIconColor: Colors.pink,
        label: Text(
          widget.label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xCAFFFFFF),
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(
          widget.icone,
          color: Colors.pink,
        ),
        suffixIcon: widget.isSenha
            ? IconButton(
                onPressed: () {
                  setState(() {
                    mostrarSenha = !mostrarSenha;
                  });
                },
                icon: mostrarSenha
                    ? const Icon(
                        Icons.visibility_off,
                        color: Colors.pink,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: Colors.pink,
                      ),
              )
            : null,
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
