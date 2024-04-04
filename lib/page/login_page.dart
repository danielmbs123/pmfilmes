import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pmfilmes/vm/auth_view_model.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loading = false;

  final emailController = TextEditingController(text: "");
  final senhaController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<AuthViewModel>(context);

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "E-mail",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: senhaController,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: ElevatedButton(
                  onPressed: () => login(
                    context,
                    emailController.text,
                    senhaController.text,
                  ),
                  child: const Text("Entrar"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Esqueci minha senha",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                  Text(
                    "Criar conta",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(BuildContext context, String email, String senha) {
    final vm = Provider.of<AuthViewModel>(context, listen: false);

    final future = vm.autenticar(email, senha);

    future
        .then(
      (value) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Seja bem vindo, ${value.usuarioNome}"),
        ),
      ),
    )
        .catchError(
      (e) {
        print(e);

        return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Não deu para fazer login: $e"),
          ),
        );
      },
    );
  }
}
