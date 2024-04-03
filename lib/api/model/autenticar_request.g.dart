// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autenticar_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutenticarRequest _$AutenticarRequestFromJson(Map<String, dynamic> json) =>
    AutenticarRequest(
      emailLogin: json['emailLogin'] as String,
      senha: json['senha'] as String,
    );

Map<String, dynamic> _$AutenticarRequestToJson(AutenticarRequest instance) =>
    <String, dynamic>{
      'emailLogin': instance.emailLogin,
      'senha': instance.senha,
    };
