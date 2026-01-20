import 'package:ag_crm_myadmin/views/finance/finance_screen.dart';
import 'package:ag_crm_myadmin/views/garage/garage_screen.dart';
import 'package:ag_crm_myadmin/views/login/login_screen.dart';
import 'package:ag_crm_myadmin/views/projects/projects_screen.dart';
import 'package:ag_crm_myadmin/views/register/register_screen.dart';
import 'package:ag_crm_myadmin/views/tools/tools_screen.dart';
import 'package:ag_crm_myadmin/views/workers/workers_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(title: Text("Ag myadmin")),
      body: Center(child: Text("Home")),
    );
  }
}
