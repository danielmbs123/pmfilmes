// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credencial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credencial _$CredencialFromJson(Map<String, dynamic> json) => Credencial(
      usuarioId: json['usuarioId'] as String,
      usuarioNome: json['usuarioNome'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$CredencialToJson(Credencial instance) =>
    <String, dynamic>{
      'usuarioId': instance.usuarioId,
      'usuarioNome': instance.usuarioNome,
      'accessToken': instance.accessToken,
    };
