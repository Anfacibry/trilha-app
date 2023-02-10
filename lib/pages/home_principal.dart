import 'package:flutter/material.dart';
import 'package:trilha_app/components/caixa_de_texto_login.dart';
import 'package:trilha_app/pages/minha_pagina.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({Key? key}) : super(key: key);

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double altura = MediaQuery.of(context).size.height;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: altura,
          width: largura,
          child: Padding(
            padding: EdgeInsets.all(largura * .08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
                      const Text(
                        "Já tem cadastro?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text(
                        "Faça seu login e make the change._",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CaixaDeTextoLogin(
                        label: "E-mail",
                        icone: Icons.email,
                        hintText: "Ex: bob@gmail.com",
                        isSenha: false,
                        controller: controllerEmail,
                      ),
                      CaixaDeTextoLogin(
                        label: "Senha",
                        icone: Icons.lock,
                        isSenha: true,
                        controller: controllerSenha,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        width: largura * .8,
                        child: ElevatedButton(
                          onPressed: () {
                            if (controllerEmail.text == "aaaa" &&
                                controllerSenha.text == "1234") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (cont) => const MinhaPagina(),
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Login efetuado com sucesso"),
                              ));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("E-mail ou senha incorreta"),
                              ));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("ENTRAR"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: const [
                      Text(
                        "Esqueci minha senha",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Criar conta",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
