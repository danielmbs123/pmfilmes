part of swagger.api;

class CategoriaAdicionarRequest {
  String? descricao;

  CategoriaAdicionarRequest();

  @override
  String toString() {
    return 'CategoriaAdicionarRequest[descricao=$descricao, ]';
  }

  CategoriaAdicionarRequest.fromJson(Map<String, dynamic> json) {
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    return {'descricao': descricao};
  }

  static List<CategoriaAdicionarRequest> listFromJson(List<dynamic> json) {
    return json
        .map((value) => CategoriaAdicionarRequest.fromJson(value))
        .toList();
  }

  static Map<String, CategoriaAdicionarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, CategoriaAdicionarRequest>{};

    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CategoriaAdicionarRequest.fromJson(value));
    }

    return map;
  }
}
