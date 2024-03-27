part of swagger.api;

class UsuarioAdicionarRequest {
  String? nome;

  String? emailLogin;

  String? emailLoginConfirmacao;

  String? senha;

  String? senhaConfirmacao;

  UsuarioAdicionarRequest();

  @override
  String toString() {
    return 'UsuarioAdicionarRequest[nome=$nome, emailLogin=$emailLogin, emailLoginConfirmacao=$emailLoginConfirmacao, senha=$senha, senhaConfirmacao=$senhaConfirmacao, ]';
  }

  UsuarioAdicionarRequest.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    emailLogin = json['emailLogin'];
    emailLoginConfirmacao = json['emailLoginConfirmacao'];
    senha = json['senha'];
    senhaConfirmacao = json['senhaConfirmacao'];
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'emailLogin': emailLogin,
      'emailLoginConfirmacao': emailLoginConfirmacao,
      'senha': senha,
      'senhaConfirmacao': senhaConfirmacao
    };
  }

  static List<UsuarioAdicionarRequest> listFromJson(List<dynamic> json) {
    return json
        .map((value) => UsuarioAdicionarRequest.fromJson(value))
        .toList();
  }

  static Map<String, UsuarioAdicionarRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = <String, UsuarioAdicionarRequest>{};

    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = UsuarioAdicionarRequest.fromJson(value));
    }
    return map;
  }
}
