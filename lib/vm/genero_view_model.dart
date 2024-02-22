import 'package:flutter/foundation.dart';
import 'package:pmfilmes/dominio/genero.dart';

class GeneroViewModel extends ChangeNotifier {
  final List<Genero> generos;
  late Genero _genero;

    GeneroViewModel({
    required this.generos,
  });

  void selecionaGenero(Genero genero) {
    _genero = genero;
    notifyListeners();
  }

  Genero get generoSelecionado => _genero;
}
