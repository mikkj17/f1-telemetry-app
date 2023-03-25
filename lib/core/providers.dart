import 'package:dio/dio.dart';
import 'package:f1_telemetry/core/api/clients/driver_client.dart';
import 'package:f1_telemetry/core/globals.dart';
import 'package:f1_telemetry/core/repositories/driver_repository.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final driverClient = DriverClient(dio, baseUrl: baseApiUrl);

    return Provider(
      create: (context) => DriverRepository(client: driverClient),
      child: child,
    );
  }
}
