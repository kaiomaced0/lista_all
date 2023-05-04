import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Favoritos_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';

int currentBnb = 0;
BottomNavigationBar getHome_bnb(BuildContext context) {
  void mudarTela(int x) {
    if (x == 0) {
      currentBnb = 0;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Home_page(),
      ));
    }
    if (x == 1) {
      currentBnb = 1;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Search_page(),
      ));
    }
    if (x == 2) {
      currentBnb = 2;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Carrinho_page(),
      ));
    }
    if (x == 3) {
      currentBnb = 3;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Conta_page(),
      ));
    }
  }

  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.home),
        label: " Home",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.search),
        label: " Search",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.shopping_cart),
        label: " Carrinho",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.account_circle),
        label: " Conta",
      ),
    ],
    onTap: (value) {
      mudarTela(value);
    },
    currentIndex: currentBnb,
  );
}

BottomNavigationBar getHomeH_bnb(BuildContext context) {
  void mudarTela2(int x) {
    if (x == 0) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home_page(),
      ));
      currentBnb = 0;
    }
    if (x == 1) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Search_page(),
      ));
      currentBnb = 1;
    }
    if (x == 2) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Carrinho_page(),
      ));
      currentBnb = 2;
    }
    if (x == 3) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Conta_page(),
      ));
      currentBnb = 3;
    }
  }

  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.home),
        label: " Home",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.search),
        label: " Search",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.shopping_cart),
        label: " Carrinho",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.account_circle),
        label: " Conta",
      ),
    ],
    onTap: (value) {
      mudarTela2(value);
    },
    currentIndex: currentBnb,
  );
}

AppBar getHome_appbar(String titulo, BuildContext context) {
  Text tituloA = Text(titulo);
  return AppBar(
    title: tituloA,
    centerTitle: true,
    backgroundColor: CustomColors().getColorMain(),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Favoritos_page(),
          ));
        },
      ),
      IconButton(
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Search_page(),
          ));
        },
      ),
    ],
  );
}
