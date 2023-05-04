import 'package:lista_all/model/usuario.dart';
import 'package:collection/collection.dart';

class UsuarioRepository {
  late List<Usuario> listaUsuarios = [
    Usuario('Administrador', 'adm', 'adm', '00466444855', 'adm@gmail.com', ''),
  ];
  late Usuario usuarioLogado = Usuario('', '', '', '', '', '');
}
