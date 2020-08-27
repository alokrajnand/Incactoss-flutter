import 'package:actoss_incident/env/theam.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white38,
              backgroundImage:
                  AssetImage('assets/images/logo/Actoss-logo-600.png'),
            ),
            accountName: Text('Alok Kumar'),
            accountEmail: Text('alokrajnand@gmail.com'),
          ),
          ListTile(
            leading: Icon(
              Icons.broken_image,
              color: AppColors.PRIMARY_COLOR,
              size: 25,
            ),
            title: Text(
              'Incident',
              style: TextStyle(
                  color: AppColors.PRIMARY_COLOR,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: AppColors.PRIMARY_COLOR,
              size: 25,
            ),
            onTap: () {},
          ),
          Divider(thickness: 2),
          ListTile(
              leading: Icon(
                Icons.person,
                color: AppColors.PRIMARY_COLOR,
                size: 25,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: AppColors.PRIMARY_COLOR,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: AppColors.PRIMARY_COLOR,
                size: 25,
              ),
              onTap: () {}),
          Divider(thickness: 2),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: AppColors.PRIMARY_COLOR,
              size: 25,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  color: AppColors.PRIMARY_COLOR,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: AppColors.PRIMARY_COLOR,
              size: 25,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Divider(thickness: 2),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: AppColors.PRIMARY_COLOR,
              size: 25,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  color: AppColors.PRIMARY_COLOR,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: AppColors.PRIMARY_COLOR,
              size: 25,
            ),
            onTap: () async {},
          ),
        ],
      ),
    );
  }
}
