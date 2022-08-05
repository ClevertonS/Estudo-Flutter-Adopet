import 'package:adopet/bloc/auth_bloc.dart';
import 'package:adopet/screens/dashboard_screen.dart';
import 'package:adopet/screens/sing_up_screen.dart';
import 'package:adopet/widgets/backgrounds/background_first_screen.dart';
import 'package:adopet/widgets/button.dart';
import 'package:adopet/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adopet/constants/Cores.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String logo = "images/Logo.svg";
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Stack(children: [
              Container(
                color: Cores.azul,
              ),
              const BackgroundSvgFirstScreen(),
              Center(
                heightFactor: 0.82,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: SvgPicture.asset(logo),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 27),
                      child: TextoH1(value: "Boas-vindas!"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: SizedBox(
                        width: 248,
                        child: TextoH2(
                            value:
                                "Que tal mudar sua vida adotando seu novo melhor amigo? Vem com a gente!",
                            textAlign: TextAlign.center),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Button(
                        onPressed: () {},
                        child: const TextoH2(
                          value: "Já tenho conta",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Button(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const SignUpScreen())));
                        },
                        child: const TextoH2(
                          value: "Quero me cadastrar",
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
