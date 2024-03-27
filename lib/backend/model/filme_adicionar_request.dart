part of swagger.api;

class FilmeAdicionarRequest {
  String? nome;

  String? diretor;

  String? atores;

  int? anoLancamento;

  String? categoriaId;

  FilmeAdicionarRequest();

  @override
  String toString() {
    return 'FilmeAdicionarRequest[nome=$nome, diretor=$diretor, atores=$atores, anoLancamento=$anoLancamento, categoriaId=$categoriaId, ]';
  }

  FilmeAdicionarRequest.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    diretor = json['diretor'];
    atores = json['atores'];
    anoLancamento = json['anoLancamento'];
    categoriaId = json['categoriaId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'diretor': diretor,
      'atores': atores,
      'anoLancamento': anoLancamento,
      'categoriaId': categoriaId
    };
  }

  static List<FilmeAdicionarRequest> listFromJson(List<dynamic> json) {
    return json.map((value) => FilmeAdicionarRequest.fromJson(value)).toList();
  }

  static Map<String, FilmeAdicionarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, FilmeAdicionarRequest>{};

    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FilmeAdicionarRequest.fromJson(value));
    }

    return map;
  }
}
