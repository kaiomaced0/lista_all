// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lista_all/Cadastro_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Login_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/main.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/model/usuario.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';
import 'package:lista_all/repositories/item_repository.dart';
import 'package:lista_all/repositories/usuario_repository.dart';
import 'package:lista_all/main.dart';

class LoginPageContent extends StatefulWidget {
  const LoginPageContent({super.key});

  @override
  State<LoginPageContent> createState() => _LoginPageContentState();
}

class _LoginPageContentState extends State<LoginPageContent> {
  String _email = '';
  String _senha = '';

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Usuario não encontrado'),
        content: Text('Login e/ou senha incorreto! '),
        actions: [
          TextButton(
            onPressed: () {
              _email = '';
              _senha = '';
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login_page()),
              );
            },
            child: Text('Tentar novamente'),
          ),
        ],
      ),
    );
  }

  bool validaLogin() {
    for (var i = 0; i < UsuarioRepository.listaUsuarios.length; i++) {
      if (UsuarioRepository.listaUsuarios[i].email == _email &&
          UsuarioRepository.listaUsuarios[i].senha == _senha) {
        UsuarioRepository.listaUsuarios[0] = Usuario('', '', '', '', '', '');
        UsuarioRepository.usuarioLogado = i;
        CarrinhoRepository.carrinhos[0] = CarrinhoRepository.carrinhoVazio;
        CarrinhoRepository.carrinhoLogado = i;
        return true;
      }
      if (UsuarioRepository.listaUsuarios[i].login == _email &&
          UsuarioRepository.listaUsuarios[i].senha == _senha) {
        UsuarioRepository.usuarioLogado = i;
        CarrinhoRepository.carrinhoLogado = i;

        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                _email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email ou Login',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (text) {
                _senha = text;
              },
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Cadastro_page()),
                    );
                  },
                  child: Text('Cadastrar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    validaLogin()
                        ? Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_page()),
                          )
                        : _showConfirmationDialog();
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
