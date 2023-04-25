import 'package:lista_all/pages/model/Item.dart';

class ItemRepository {
  static List<Item> tabela = [
    Item('images/produto1.png', 'Produto1', 2100.0, 'O produto1 é bom',
        'O produto1 não só é bom, como tambem é bem interessante devido a essas situações ai..'),
    Item('images/produto2.png', 'Produto2', 3000.0, 'O produto2 é lindo',
        'O produto2 não só é lindo, como tambem é bem interessante devido a essas situações ai..'),
    Item('images/produto3.png', 'Produto3', 2700.0, 'O produto3 é um achado..',
        'O produto3 não só é um achado, como tambem é bem interessante devido a essas situações ai..')
  ];
}
