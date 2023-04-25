// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Login_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';

class Home_drawer extends StatefulWidget {
  const Home_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/search': (context) => const Search_page(),
      '/carrinho': (context) => const Carrinho_page(),
      '/conta': (context) => const Conta_page(),
      '/login': (context) => const Login_page()
    });
  }

  @override
  State<Home_drawer> createState() => _Home_drawerState();
}

class _Home_drawerState extends State<Home_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: CustomColors().getColorMain(),
            ),
            accountName: Text('Kaio Macedo'),
            accountEmail: Text('kaiomacedo@unitins.br'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: CustomColors().getColorCustom1(),
              child: Text(
                "KM",
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Conta_page(),
              ));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: CustomColors().getColorMain(),
            ),
            title: Text('Carrinho'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Carrinho_page(),
              ));
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Home_page(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
