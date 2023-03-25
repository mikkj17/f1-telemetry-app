// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverTable _$DriverTableFromJson(Map<String, dynamic> json) => DriverTable(
      drivers: (json['Drivers'] as List<dynamic>)
          .map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DriverTableToJson(DriverTable instance) =>
    <String, dynamic>{
      'Drivers': instance.drivers,
    };
