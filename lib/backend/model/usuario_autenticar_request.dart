part of swagger.api;

class UsuarioAutenticarRequest {
  String? emailLogin;

  String? senha;

  UsuarioAutenticarRequest();

  @override
  String toString() {
    return 'UsuarioAutenticarRequest[emailLogin=$emailLogin, senha=$senha, ]';
  }

  UsuarioAutenticarRequest.fromJson(Map<String, dynamic> json) {
    emailLogin = json['emailLogin'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    return {'emailLogin': emailLogin, 'senha': senha};
  }

  static List<UsuarioAutenticarRequest> listFromJson(List<dynamic> json) {
    return json
        .map((value) => UsuarioAutenticarRequest.fromJson(value))
        .toList();
  }

  static Map<String, UsuarioAutenticarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, UsuarioAutenticarRequest>{};

    if (json.isNotEmpty) {
      json.forEach(
        (String key, Map<String, dynamic> value) =>
            map[key] = UsuarioAutenticarRequest.fromJson(value),
      );
    }

    return map;
  }
}
