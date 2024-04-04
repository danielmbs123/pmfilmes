import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pmfilmes/api/client.dart';
import 'package:pmfilmes/api/model/autenticar_request.dart';
import 'package:pmfilmes/api/model/credencial.dart';

class AuthViewModel extends ChangeNotifier {
  final _client = ApiClient(Dio());

  Future<Credencial> autenticar(String email, String senha) =>
      _client.autenticar(
        AutenticarRequest(emailLogin: email, senha: senha),
      );
}
