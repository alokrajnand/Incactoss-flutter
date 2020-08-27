import 'package:actoss_incident/env/theam.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FlashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo/Actoss-logo-600.png",
              height: 80,
            ),
            SizedBox(height: 10),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: AppColors.FLASH_COLOR,
              child: Text(
                'ACTOSS',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
