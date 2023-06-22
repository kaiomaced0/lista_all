import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lista_all/AdmHome_page.dart';
import 'package:lista_all/AdmProduto_page.dart';
import 'package:lista_all/components/appbar.dart';
import 'package:lista_all/components/bnb_adm.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/components/home_drawer.dart';
import 'package:lista_all/repositories/item_repository.dart';

class AdmProdutoForm_page extends StatelessWidget {
  const AdmProdutoForm_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _AdmProdutoForm_page(title: 'Adm Home'),
    );
  }
}

class _AdmProdutoForm_page extends StatefulWidget {
  const _AdmProdutoForm_page({super.key, required this.title});

  final String title;

  @override
  State<_AdmProdutoForm_page> createState() => AdmProdutoForm_pageState();
}

class AdmProdutoForm_pageState extends State<_AdmProdutoForm_page> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nomeController = TextEditingController();
    final _preco = TextEditingController();
    final _descricaoCurta = TextEditingController();
    final _descricao = TextEditingController();

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
                  MaterialPageRoute(builder: (context) => AdmHome_page()),
                );
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
              String _precoItemS = _preco.toString();
                Item item = Item('images/produto1.png', _nomeController.toString(), double.parse(_precoItemS), _descricaoCurta.toString(), _descricao.toString());
                ItemRepository.tabela.add(item);

                print('Produto Salvo!');
                for (var i = 0; i < ItemRepository.tabela.length; i++) {
                  print(ItemRepository.tabela[i].nomeItem);
                  print('----------------');
                }

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AdmProduto_page()),
                );
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: bnbAdm(context),
      appBar: appBar("Cadastro Produto", context),
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
                  return 'Digite o nome do Produto';
                },
              ),
              TextFormField(
                controller: _preco,
                decoration: InputDecoration(
                  labelText: 'Valor',
                ),
                validator: (value) {
                  return 'Digite o Valor do Produto';
                },
              ),
              TextFormField(
                controller: _descricaoCurta,
                decoration: InputDecoration(
                  labelText: 'Descricao Curta',
                ),
                validator: (value) {
                  return 'Digite a Descricao curta';
                },
              ),
              TextFormField(
                controller: _descricao,
                decoration: InputDecoration(
                  labelText: 'Descricao',
                ),
                obscureText: true,
                validator: (value) {
                  return 'Digite a descricao';
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
