import 'package:json_annotation/json_annotation.dart';

part "credencial.g.dart";

@JsonSerializable()
class Credencial {
  final String usuarioId;
  final String usuarioNome;
  final String accessToken;

  Credencial({
    required this.usuarioId,
    required this.usuarioNome,
    required this.accessToken,
  });

  factory Credencial.fromJson(Map<String, dynamic> json) =>
      _$CredencialFromJson(json);

  Map<String, dynamic> toJson() => _$CredencialToJson(this);
}
