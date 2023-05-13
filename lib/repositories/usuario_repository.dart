import 'package:lista_all/model/usuario.dart';
import 'package:collection/collection.dart';

class UsuarioRepository {
  static Usuario usuarioVazio = Usuario('', '', '', '', '', '');
  static Usuario kaio = Usuario('Kaio', 'kaiologin', 'kaiosenha',
      '34234343434', 'kaiomacedo@unitins.br', '');
  static Usuario adm =
      Usuario('Adm', 'admlogin', 'admsenha', '111222', 'adm@gmail.com', '');

  static List<Usuario> listaUsuarios = [usuarioVazio, adm, kaio];

  static int usuarioLogado = 0;
}
