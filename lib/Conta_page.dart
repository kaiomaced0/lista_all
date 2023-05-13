import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

class Conta_page extends StatelessWidget {
  const Conta_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Conta_page(title: 'Conta'),
    );
  }
}

class _Conta_page extends StatefulWidget {
  const _Conta_page({super.key, required this.title});

  final String title;

  @override
  State<_Conta_page> createState() => Conta_pageState();
}

class Conta_pageState extends State<_Conta_page> {
  @override
  Widget build(BuildContext context) {
    String nome =
        UsuarioRepository.listaUsuarios[UsuarioRepository.usuarioLogado].nome;
    String email =
        UsuarioRepository.listaUsuarios[UsuarioRepository.usuarioLogado].email;
    return Scaffold(
      appBar: getHome_appbar("Conta", context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[400],
              width: 300,
              height: 35,
              alignment: Alignment.bottomLeft,
              child: Text(
                'Nome: $nome',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.grey[400],
              width: 300,
              height: 35,
              alignment: Alignment.bottomLeft,
              child: Text(
                textAlign: TextAlign.right,
                'Email: $email',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Row(
              children: [
                SizedBox(height: 40, width: 50),
                CardButton(
                  title: 'Endereços',
                  onTap: () {
                    // Lógica para lidar com o pressionamento do botão "Endereços"
                  },
                ),
                CardButton(
                  title: 'Cartões',
                  onTap: () {
                    // Lógica para lidar com o pressionamento do botão "Cartões"
                  },
                ),
                CardButton(
                  title: 'Cartões',
                  onTap: () {
                    // Lógica para lidar com o pressionamento do botão "Cartões"
                  },
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: getHome_bnb(context),
    );
  }
}

class CardButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CardButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onTap;
      },
      child: Card(
        borderOnForeground: true,
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(Icons.credit_card),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
