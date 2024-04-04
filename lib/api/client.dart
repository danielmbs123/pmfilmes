import 'package:dio/dio.dart';
import 'package:pmfilmes/api/api.dart';
import 'package:pmfilmes/api/model/autenticar_request.dart';
import 'package:pmfilmes/api/model/credencial.dart';
import 'package:retrofit/http.dart';

part 'client.g.dart';

@RestApi(baseUrl: "http://localhost:5080/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(Apis.autenticar)
  Future<Credencial> autenticar(@Body() AutenticarRequest request);
}

ApiClient buildClient() {
  final dio = Dio();

  dio.interceptors.addAll(
    [
      PrettyDio
    ]
  );

  return ApiClient(dio);
}
