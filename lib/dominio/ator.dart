class Ator {
  final String id;
  final String nome;
  final String nacionalidade;

  Ator({
    required this.id,
    required this.nome,
    required this.nacionalidade,
  });

  bool get isEmpty => id.isEmpty;
  bool get isNotEmpty => !isEmpty;

  static Ator empty() {
    return Ator(
      id: "",
      nome: "",
      nacionalidade: "",
    );
  }
}
