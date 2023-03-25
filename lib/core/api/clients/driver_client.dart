import 'package:dio/dio.dart';
import 'package:f1_telemetry/core/api/models/api_response.dart';
import 'package:f1_telemetry/core/api/models/driver_table_response.dart';
import 'package:retrofit/retrofit.dart';

part 'driver_client.g.dart';

@RestApi()
abstract class DriverClient {
  factory DriverClient(Dio dio, {String baseUrl}) = _DriverClient;

  @GET('/drivers.json')
  Future<ApiResponse<DriverTableResponse>> fetchAll();

  @GET('/{year}/drivers.json')
  Future<ApiResponse<DriverTableResponse>> fetchByYear({
    @Path('year') required int year,
  });
}
