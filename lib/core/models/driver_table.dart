import 'package:f1_telemetry/core/models/driver.dart';
import 'package:json_annotation/json_annotation.dart';

part 'driver_table.g.dart';

@JsonSerializable()
class DriverTable {
  @JsonKey(name: 'Drivers')
  final List<Driver> drivers;

  const DriverTable({required this.drivers});

  factory DriverTable.fromJson(Map<String, dynamic> json) =>
      _$DriverTableFromJson(json);

  Map<String, dynamic> toJson() => _$DriverTableToJson(this);
}
