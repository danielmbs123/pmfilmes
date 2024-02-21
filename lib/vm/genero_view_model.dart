import 'package:flutter/foundation.dart';
import 'package:pmfilmes/dominio/genero.dart';

class GeneroViewModel extends ChangeNotifier {
  final List<Genero> generos;

  GeneroViewModel({
    required this.generos,
  });
}
