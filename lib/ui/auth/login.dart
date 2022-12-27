import 'package:ballasttest/ui/home/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginFormKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        child: Form(
            key: loginFormKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextField(
                      decoration:
                          const InputDecoration(hintText: 'Introduce correo'),
                      onChanged: (value) => setState(() => email = value)),
                  const SizedBox(height: 10),
                  TextField(
                      decoration: const InputDecoration(
                          hintText: 'Introduce contraseña'),
                      onChanged: (value) => setState(() => password = value)),
                  ElevatedButton(
                      child: const Text('Entrar'),
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                      }),
                ])),
      ),
    );
  }
}
