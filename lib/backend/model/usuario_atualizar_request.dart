part of swagger.api;

class UsuarioAtualizarRequest {
  String? id;

  String? senhaAtual;

  String? senhaNova;

  UsuarioAtualizarRequest();

  @override
  String toString() {
    return 'UsuarioAtualizarRequest[id=$id, senhaAtual=$senhaAtual, senhaNova=$senhaNova, ]';
  }

  UsuarioAtualizarRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    senhaAtual = json['senhaAtual'];
    senhaNova = json['senhaNova'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'senhaAtual': senhaAtual, 'senhaNova': senhaNova};
  }

  static List<UsuarioAtualizarRequest> listFromJson(List<dynamic> json) {
    return json
        .map((value) => UsuarioAtualizarRequest.fromJson(value))
        .toList();
  }

  static Map<String, UsuarioAtualizarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, UsuarioAtualizarRequest>{};

    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = UsuarioAtualizarRequest.fromJson(value));
    }

    return map;
  }
}
