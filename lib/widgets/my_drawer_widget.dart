import 'package:ag_crm_myadmin/views/login/login_screen.dart';
import 'package:ag_crm_myadmin/views/register/register_screen.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Hello"),
            accountEmail: Text("Hello"),
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Login"),
                leading: Icon(Icons.login_rounded),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: Text("Register"),
                leading: Icon(Icons.app_registration_rounded),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Registerscreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
