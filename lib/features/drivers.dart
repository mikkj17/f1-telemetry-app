import 'package:f1_telemetry/core/models/driver.dart';
import 'package:f1_telemetry/core/repositories/driver_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Drivers extends StatelessWidget {
  const Drivers({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: context.read<DriverRepository>().getDriversByYear(year: 2023),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }

        final driverTable = snapshot.data!;
        return Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  '2023 Drivers',
                  style: TextStyle(
                    fontFamily: 'Titillium Web',
                    fontSize: 32,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: driverTable.drivers.map(_buildDriver).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDriver(Driver driver) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/drivers/${driver.driverId}.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 69,
                width: 69,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${driver.givenName} ${driver.familyName}',
                    style: const TextStyle(
                      fontFamily: 'Titillium Web',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    driver.nationality,
                    style: const TextStyle(
                      fontFamily: 'Titillium Web',
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white),
            ),
            child: SizedBox(
              height: 24,
              width: 24,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  driver.permanentNumber,
                  style: const TextStyle(
                    fontFamily: 'Titillium Web',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
