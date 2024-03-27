part of swagger.api;

class CategoriaAtualizarRequest {
  String? id;

  String? descricao;

  CategoriaAtualizarRequest();

  @override
  String toString() {
    return 'CategoriaAtualizarRequest[id=$id, descricao=$descricao, ]';
  }

  CategoriaAtualizarRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'descricao': descricao};
  }

  static List<CategoriaAtualizarRequest> listFromJson(List<dynamic> json) {
    return json
        .map((value) => CategoriaAtualizarRequest.fromJson(value))
        .toList();
  }

  static Map<String, CategoriaAtualizarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, CategoriaAtualizarRequest>{};

    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CategoriaAtualizarRequest.fromJson(value));
    }

    return map;
  }
}
