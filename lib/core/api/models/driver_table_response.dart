import 'package:f1_telemetry/core/models/driver_table.dart';
import 'package:json_annotation/json_annotation.dart';

part 'driver_table_response.g.dart';

@JsonSerializable()
class DriverTableResponse {
  final String xmlns;
  final String series;
  final String url;
  final String limit;
  final String offset;
  final String total;
  @JsonKey(name: 'DriverTable')
  final DriverTable driverTable;

  const DriverTableResponse({
    required this.xmlns,
    required this.series,
    required this.url,
    required this.limit,
    required this.offset,
    required this.total,
    required this.driverTable,
  });

  factory DriverTableResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverTableResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DriverTableResponseToJson(this);
}
