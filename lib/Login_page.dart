import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';
import 'package:lista_all/pages/home_widgets/login_contet.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Login_page(title: 'Login'),
    );
  }
}

class _Login_page extends StatefulWidget {
  const _Login_page({super.key, required this.title});

  final String title;

  @override
  State<_Login_page> createState() => Login_pageState();
}

class Login_pageState extends State<_Login_page> {
  @override
  Widget build(BuildContext context) {
    void _upgradeNavigator_conta() {
      Navigator.pushNamed(context, '/conta');
      setState(() {});
    }

    void _upgradeNavigator_carrinho() {
      Navigator.pushNamed(context, '/carrinho');
      setState(() {});
    }

    void _upgradeNavigator_search() {
      Navigator.pushNamed(context, '/search');
      setState(() {});
    }

    void _upgradeNavigator_home() {
      Navigator.pushNamed(context, '/');
      setState(() {});
    }

    void _upgradeNavigator_login() {
      Navigator.pushNamed(context, '/login');
      setState(() {});
    }

    Drawer getHome_drawer() {
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
              onTap: _upgradeNavigator_conta,
            ),
            ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: CustomColors().getColorMain(),
                ),
                title: Text('Carrinho'),
                onTap: _upgradeNavigator_carrinho),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: CustomColors().getColorMain(),
              ),
              title: Text('Configurações'),
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: CustomColors().getColorMain(),
              ),
              title: Text('Login'),
              onTap: _upgradeNavigator_login,
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                color: CustomColors().getColorMain(),
              ),
              title: Text('Sair'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Login"),
      floatingActionButton: getFab(),
      body: LoginPageContent(),
    );
  }
}
