part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = BrowserClient();

  final Map<String, String> _defaultHeaderMap = {};
  final Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "/"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['Bearer'] = ApiKeyAuth(
      "header",
      "Authorization",
    );
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'CategoriaAdicionarRequest':
          return CategoriaAdicionarRequest.fromJson(value);
        case 'CategoriaAtualizarRequest':
          return CategoriaAtualizarRequest.fromJson(value);
        case 'FilmeAdicionarRequest':
          return FilmeAdicionarRequest.fromJson(value);
        case 'FilmeAtualizarRequest':
          return FilmeAtualizarRequest.fromJson(value);
        case 'UsuarioAdicionarRequest':
          return UsuarioAdicionarRequest.fromJson(value);
        case 'UsuarioAtualizarRequest':
          return UsuarioAtualizarRequest.fromJson(value);
        case 'UsuarioAutenticarRequest':
          return UsuarioAutenticarRequest.fromJson(value);
        default:
          {
            Match? match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match![1];
              return value.map((v) => _deserialize(v, newTargetType!)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match![1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType!)));
            }
          }
      }
    } catch (e, stack) {
      throw ApiException.withInner(
        500,
        'Exception during deserialization.',
        e as Exception?,
        stack,
      );
    }

    throw ApiException(
      500,
      'Could not find a suitable class for deserialization',
    );
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object? obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams.toList(), headerParams);

    var ps = queryParams.map((p) =>
        '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ? '?${ps.join('&')}' : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return client.patch(Uri.parse(url),
              headers: headerParams, body: msgBody);
        default:
          return client.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach(_forEachParam(queryParams, headerParams));
  }

  void Function(String) _forEachParam(
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    return (authName) {
      if (_authentications.containsKey(authName)) {
        final auth = _authentications[authName];

        auth?.applyToParams(queryParams, headerParams);
        return;
      }

      throw ArgumentError("Authentication undefined: $authName");
    };
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
