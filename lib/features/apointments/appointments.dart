import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Appointment'),
          bottom: const TabBar(
            indicator: BoxDecoration(
              color: Colors.white,
            ),
            labelStyle: TextStyle(
              color: Colors.black,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              color: Colors.white,
            ),
            tabs: <Widget>[
              Tab(
                icon: Text('Cart'),
              ),
              Tab(
                icon: Text('Historic'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("Page Cart"),
            ),
            Center(
              child: Text("Page History"),
            ),
          ],
        ),
      ),
    );
  }
}
