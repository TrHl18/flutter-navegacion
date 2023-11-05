import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/page/car/car_detail.dart';


import 'package:flutter_navegacion/models/car.dart';
class CarPage extends StatelessWidget {
  const CarPage({super.key, required this.cars});
  final List<Car> cars;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cars[index].make),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(detailCar: cars[index]),
                ),
              );
            },
          );
        });
  }
}
