// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eks_server_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerDetailsDto _$ServerDetailsDtoFromJson(Map<String, dynamic> json) =>
    ServerDetailsDto(
      baseUrl: json['base_url'] as String,
      hris: json['hris'] as int,
    );

Map<String, dynamic> _$ServerDetailsDtoToJson(ServerDetailsDto instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'hris': instance.hris,
    };
