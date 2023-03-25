import 'package:f1_telemetry/core/api/clients/driver_client.dart';
import 'package:f1_telemetry/core/models/driver_table.dart';

class DriverRepository {
  final DriverClient client;

  DriverRepository({required this.client});

  Future<DriverTable> getDrivers() async {
    final response = await client.fetchAll();
    return response.data.driverTable;
  }

  Future<DriverTable> getDriversByYear({required int year}) async {
    final response = await client.fetchByYear(year: year);
    return response.data.driverTable;
  }
}
