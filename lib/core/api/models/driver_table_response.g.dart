// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverTableResponse _$DriverTableResponseFromJson(Map<String, dynamic> json) =>
    DriverTableResponse(
      xmlns: json['xmlns'] as String,
      series: json['series'] as String,
      url: json['url'] as String,
      limit: json['limit'] as String,
      offset: json['offset'] as String,
      total: json['total'] as String,
      driverTable:
          DriverTable.fromJson(json['DriverTable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriverTableResponseToJson(
        DriverTableResponse instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'series': instance.series,
      'url': instance.url,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'DriverTable': instance.driverTable,
    };
