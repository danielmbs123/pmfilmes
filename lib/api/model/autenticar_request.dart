import 'package:json_annotation/json_annotation.dart';

part 'autenticar_request.g.dart';

@JsonSerializable()
class AutenticarRequest {
  final String emailLogin;
  final String senha;

  AutenticarRequest({required this.emailLogin, required this.senha});

  factory AutenticarRequest.fromJson(Map<String, dynamic> json) =>
      _$AutenticarRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AutenticarRequestToJson(this);
}
