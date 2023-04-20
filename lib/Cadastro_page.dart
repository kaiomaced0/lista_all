import 'package:flutter/material.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Login_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

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
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
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
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Cadastro"),
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
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      _upgradeNavigator_login();
                    },
                    child: Icon(Icons.cancel),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _upgradeNavigator_login();
                    },
                    child: Icon(Icons.add_circle_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
