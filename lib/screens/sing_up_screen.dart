import 'package:adopet/bloc/auth_bloc.dart';
import 'package:adopet/constants/Cores.dart';
import 'package:adopet/data/repositories/auth_repository.dart';
import 'package:adopet/widgets/backgrounds/background_center_login-register_screen.dart';
import 'package:adopet/widgets/backgrounds/background_top_login-register_screen.dart';
import 'package:adopet/widgets/button.dart';
import 'package:adopet/widgets/input.dart';
import 'package:adopet/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String logo = "images/Logo_Azul.svg";
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundSvgLoginRegisterScreenCenter(),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                          key: _formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: TextFormField(
                                  controller: _emailController,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: TextFormField(
                                  /* title: "Nome", */
                                  controller: _nameController,
                                  /* hintText: "Digite Seu Nome Completo",
                                  ifIsEmptyValidator: "Insira seu nome", */
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: TextFormField(
                                  /* title: "Senha", */
                                  controller: _passwordController,
                                  /* hintText: "Crie uma senha",
                                  ifIsEmptyValidator: "Insira uma senha valida", */
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 24),
                                child: Input(
                                  title: "Confirma sua senha",
                                  hintText: "Repita a senha criada acima",
                                  ifIsEmptyValidator:
                                      "Insira senha igual acima",
                                ),
                              ),
                              Button(
                                  onPressed: () {
                                    _createAccountWithEmailAndPassword(context);
                                  },
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
          const BackgroundSvgLoginRegisterScreenTop()
        ],
      ),
    );
  }

  void _createAccountWithEmailAndPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
          SignUpRequested(_emailController.text, _passwordController.text));
    }
  }
}
