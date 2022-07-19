import 'package:adopet/constants/Cores.dart';
import 'package:adopet/widgets/backgrounds/background_login-register_screen.dart';
import 'package:adopet/widgets/button.dart';
import 'package:adopet/widgets/input.dart';
import 'package:adopet/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String logo = "images/Logo_Azul.svg";
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundSvgLoginRegisterScreen(),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: SvgPicture.asset(logo),
              ),
              const SizedBox(
                width: 312,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: TextoH2(
                    value: "Ainda não tem cadastro? \n"
                        "Então, antes de buscar seu melhor amigo, precisamos de alguns dados:",
                    color: Cores.azul,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Input(
                      title: "Email",
                      hintText: "Escolha seu melhor email",
                      ifIsEmptyValidator: "Insira um email válido",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Input(
                      title: "Nome",
                      hintText: "Digite Seu Nome Completo",
                      ifIsEmptyValidator: "Insira seu nome",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Input(
                      title: "Senha",
                      hintText: "Crie uma senha",
                      ifIsEmptyValidator: "Insira uma senha valida",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: Input(
                      title: "Confirma sua senha",
                      hintText: "Repita a senha criada acima",
                      ifIsEmptyValidator: "Insira senha igual acima",
                    ),
                  ),
                  Button(
                      onPressed: () {},
                      child: const TextoH2(
                        value: "Cadastrar",
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ))
            ]),
          ),
        ],
      ),
    );
  }
}
