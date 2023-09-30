// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prodResp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProdRespImpl _$$ProdRespImplFromJson(Map<String, dynamic> json) =>
    _$ProdRespImpl(
      prods: json['prods'] as List<dynamic>? ?? const [],
      total: json['total'] as int? ?? 0,
      skip: json['skip'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
    );

Map<String, dynamic> _$$ProdRespImplToJson(_$ProdRespImpl instance) =>
    <String, dynamic>{
      'prods': instance.prods,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
