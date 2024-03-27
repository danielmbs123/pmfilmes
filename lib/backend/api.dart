library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/categorias_api.dart';
part 'api/filmes_api.dart';
part 'api/segurana_api.dart';
part 'api/usurios_api.dart';
part 'model/categoria_adicionar_request.dart';
part 'model/categoria_atualizar_request.dart';
part 'model/filme_adicionar_request.dart';
part 'model/filme_atualizar_request.dart';
part 'model/usuario_adicionar_request.dart';
part 'model/usuario_atualizar_request.dart';
part 'model/usuario_autenticar_request.dart';

ApiClient defaultApiClient = new ApiClient();
