// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Login_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/model/usuario.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

class Cadastro_page extends StatelessWidget {
  const Cadastro_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Cadastro_page(title: 'Cadastro'),
    );
  }
}

class _Cadastro_page extends StatefulWidget {
  const _Cadastro_page({super.key, required this.title});

  final String title;

  @override
  State<_Cadastro_page> createState() => Cadastro_pageState();
}

class Cadastro_pageState extends State<_Cadastro_page> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nomeController = TextEditingController();
    final _emailController = TextEditingController();
    final _loginController = TextEditingController();
    final _senhaController = TextEditingController();
    final _cpfController = TextEditingController();

    void _showConfirmationDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Confirmar cadastro'),
          content: Text('Tem certeza que deseja confirmar o cadastro?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home_page()),
                );
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                Usuario a = Usuario(
                    _nomeController.toString(),
                    _loginController.toString(),
                    _senhaController.toString(),
                    _cpfController.toString(),
                    _emailController.toString(),
                    '');
                
                setState(() {
                  UsuarioRepository().listaUsuarios.add(a);
                });

                print('usuario salvo!');
                for (var i = 0;
                    i < UsuarioRepository().listaUsuarios.length;
                    i++) {
                  print(UsuarioRepository().listaUsuarios[i].nome);
                  print(UsuarioRepository().listaUsuarios[i].email);
                  print('----------------');
                }

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login_page()),
                );
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: getHome_appbar("Cadastro", context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showConfirmationDialog();
        },
        label: Text('Confirmar'),
        icon: Icon(Icons.check),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
                validator: (value) {
                  return 'Digite o seu nome';
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  return 'Digite o seu email';
                },
              ),
              TextFormField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Login',
                ),
                validator: (value) {
                  return 'Digite o seu login';
                },
              ),
              TextFormField(
                controller: _senhaController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
                obscureText: true,
                validator: (value) {
                  return 'Digite a sua senha';
                },
              ),
              TextFormField(
                controller: _cpfController,
                decoration: InputDecoration(
                  labelText: 'CPF',
                ),
                validator: (value) {
                  return 'Digite o seu CPF';
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
