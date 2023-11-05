import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/page/direction/direction_page.dart';
import 'package:flutter_navegacion/src/page/car/car_page.dart';
import 'package:flutter_navegacion/src/page/bicycle/bicycle_page.dart';

import 'package:flutter_navegacion/models/car.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          title: Center(child:Text('Navegacion'),),
          ),
          body: TabBarView(
            children: [
           CarPage(
              cars: List.generate(
                10,
                (i) => Car(
                  'Toyota $i',
                  'Modelo deportivo $i',
                ),
              ),
            ),
            
            DirectionPage(),
            BicyclePage(),
            ],
          ),
        )
        );
  }
  
}