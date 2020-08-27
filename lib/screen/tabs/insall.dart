import 'package:actoss_incident/env/theam.dart';
import 'package:flutter/material.dart';

class InsAllScreen extends StatelessWidget {
  //// Incident Card Widget

  Widget _incCard() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('INC00000001'),
                  Text('Open'),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Text('Route ID : PATBR001 '),
              Text('Route Name : Bbazar samiti to airport'),
              Text('Raised By : Alok Kumar'),
              Text('Priority : P1'),
              Divider(
                color: Colors.grey,
              ),
              Text('Open At: 12/12/2020 12:00:00'),
              Text('Closed At : 12/12/2020 12:00:00'),
            ],
          ),
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 135,
        child: ListView(
          children: <Widget>[
            _incCard(),
            _incCard(),
            _incCard(),
            _incCard(),
            _incCard(),
          ],
        ));
  }
}
