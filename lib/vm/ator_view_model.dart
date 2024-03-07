import 'package:flutter/foundation.dart';
import 'package:pmfilmes/dominio/ator.dart';

class AtorViewModel extends ChangeNotifier {
  final List<Ator> atores;

  Ator? _ator;

  AtorViewModel({
    required this.atores,
  });

  Ator get ator => _ator == null ? Ator.empty() : _ator!;

  void seleciona(Ator ator) {
    _ator = ator;
    notifyListeners();
  }
}
