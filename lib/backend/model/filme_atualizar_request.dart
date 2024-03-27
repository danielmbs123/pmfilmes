part of swagger.api;

class FilmeAtualizarRequest {
  String? id;

  String? nome;

  String? diretor;

  String? atores;

  int? anoLancamento;

  String? categoriaId;

  FilmeAtualizarRequest();

  @override
  String toString() {
    return 'FilmeAtualizarRequest[id=$id, nome=$nome, diretor=$diretor, atores=$atores, anoLancamento=$anoLancamento, categoriaId=$categoriaId, ]';
  }

  FilmeAtualizarRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    diretor = json['diretor'];
    atores = json['atores'];
    anoLancamento = json['anoLancamento'];
    categoriaId = json['categoriaId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'diretor': diretor,
      'atores': atores,
      'anoLancamento': anoLancamento,
      'categoriaId': categoriaId
    };
  }

  static List<FilmeAtualizarRequest> listFromJson(List<dynamic> json) {
    return json.map((value) => FilmeAtualizarRequest.fromJson(value)).toList();
  }

  static Map<String, FilmeAtualizarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, FilmeAtualizarRequest>{};

    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FilmeAtualizarRequest.fromJson(value));
    }

    return map;
  }
}
