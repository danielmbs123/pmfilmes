import 'package:dio/dio.dart';
import 'package:pmfilmes/api/client.dart';
import 'package:pmfilmes/api/model/autenticar_request.dart';
import 'package:pmfilmes/api/model/credencial.dart';

class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository() : _apiClient = ApiClient(Dio());

  Future<Credencial> autenticar(AutenticarRequest request) =>
      _apiClient.autenticar(request);
}
