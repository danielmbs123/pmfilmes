import 'package:pmfilmes/dominio/genero.dart';
import 'package:pmfilmes/dominio/papel.dart';

class Filme {
  final String id;
  final Genero genero;
  final String titulo;
  final String sinopse;
  final String capa;
  final String classificacao;
  final String trailer;
  final int duracao;
  final int lancamento;
  final List<Papel> elenco;
  final int avaliacao;

  Filme({
    required this.id,
    required this.genero,
    required this.titulo,
    required this.sinopse,
    required this.capa,
    required this.classificacao,
    required this.trailer,
    required this.duracao,
    required this.lancamento,
    required this.elenco,
    required this.avaliacao,
  });
}
