import 'package:ag_crm_myadmin/views/finance/finance_screen.dart';
import 'package:ag_crm_myadmin/views/garage/garage_screen.dart';
import 'package:ag_crm_myadmin/views/login/login_screen.dart';
import 'package:ag_crm_myadmin/views/projects/projects_screen.dart';
import 'package:ag_crm_myadmin/views/register/register_screen.dart';
import 'package:ag_crm_myadmin/views/tools/tools_screen.dart';
import 'package:ag_crm_myadmin/views/workers/workers_screen.dart';
import 'package:ag_crm_myadmin/widgets/my_drawer_widget.dart';
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
      body: Column(
        children: [
          // Custom top Appbar

          // Custom serach bar
          // List Of Projects
          // List Of Workers
          // List of Tools
        ],
      ),
    );
  }
}
