// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Login_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/model/usuario.dart';
import 'package:lista_all/model/carrinho.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

Drawer Home_drawer(BuildContext context) {
  String aa = '00';
  if (UsuarioRepository.listaUsuarios[UsuarioRepository.usuarioLogado].nome !=
      '') {
    aa = UsuarioRepository
        .listaUsuarios[UsuarioRepository.usuarioLogado].nome.characters.first;
  } else if (UsuarioRepository
          .listaUsuarios[UsuarioRepository.usuarioLogado].nome !=
      '') {
    aa = '00';
  }
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: CustomColors().getColorMain(),
          ),
          accountName: Text(UsuarioRepository
              .listaUsuarios[UsuarioRepository.usuarioLogado].nome),
          accountEmail: Text(UsuarioRepository
              .listaUsuarios[UsuarioRepository.usuarioLogado].email),
          currentAccountPicture: CircleAvatar(
            backgroundColor: CustomColors().getColorCustom1(),
            child: Text(
              aa,
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.account_circle,
            color: CustomColors().getColorMain(),
          ),
          title: Text('Conta'),
          onTap: () {
            mudarTela(2, context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.shopping_cart,
            color: CustomColors().getColorMain(),
          ),
          title: Text('Carrinho'),
          onTap: () {
            mudarTela(1, context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: CustomColors().getColorMain(),
          ),
          title: Text('Configurações'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.login,
            color: CustomColors().getColorMain(),
          ),
          title: Text('Login'),
          onTap: () {
            currentBnb = 0;
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Login_page(),
            ));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_back,
            color: CustomColors().getColorMain(),
          ),
          title: Text('Sair'),
          onTap: () {
            UsuarioRepository.usuarioLogado = 0;
            UsuarioRepository.listaUsuarios[0] =
                Usuario('', '', '', '', '', '');
            CarrinhoRepository.carrinhos[0] = CarrinhoRepository.carrinhoVazio;
            CarrinhoRepository.carrinhoLogado = 0;

            mudarTela(0, context);
          },
        ),
      ],
    ),
  );
}
