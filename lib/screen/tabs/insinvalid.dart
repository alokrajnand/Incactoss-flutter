import 'package:actoss_incident/env/theam.dart';
import 'package:flutter/material.dart';

class InsInvalidScreen extends StatelessWidget {
  /////
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
              Divider(),
              Text('Route ID : PATBR001 '),
              Text('Route Name : Bbazar samiti to airport'),
              Text('Raised By : Alok Kumar'),
              Text('Priority : P1'),
              Divider(),
              Text('Open Date : 12/12/2020 12:00:00'),
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
