import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:login_server/features/domain/entities/eks_server_entity.dart';
import 'app_dto.dart';

part 'eks_server_details.g.dart';

@JsonSerializable()
class ServerDetailsDto extends AppDto<ServerEntity> {
  @JsonKey(name: "base_url")
  final String baseUrl;
  final int hris;

  ServerDetailsDto({required this.baseUrl, required this.hris});

  @override
  toEntity() => ServerEntity(baseUrl: baseUrl, hris: hris);

  factory ServerDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ServerDetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ServerDetailsDtoToJson(this);
}
