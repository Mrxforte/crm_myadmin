import 'package:ag_crm_myadmin/views/finance/finance_screen.dart';
import 'package:ag_crm_myadmin/views/garage/garage_screen.dart';
import 'package:ag_crm_myadmin/views/projects/projects_screen.dart';
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
  Widget selectedWidget = HomeScreen();

  void navigate(id) {
    switch (id) {
      case ProjectsScreen.route:
        setState(() {
          selectedWidget = ProjectsScreen();
        });
        break;
      case WorkersScreen.route:
        setState(() {
          selectedWidget = WorkersScreen();
        });
        break;
      case FinanceScreen.route:
        setState(() {
          selectedWidget = FinanceScreen();
        });
        break;
      case ToolsScreen.route:
        setState(() {
          selectedWidget = ToolsScreen();
        });
        break;
      case GarageScreen.route:
        setState(() {
          selectedWidget = GarageScreen();
        });
        break;
      case HomeScreen.route:
        setState(() {
          selectedWidget = HomeScreen();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(title: Text("Absolute Group CRM")),
      body: Text("Dashboard"),
      sideBar: SideBar(
        items: [
          AdminMenuItem(
            title: "Dashboard",
            icon: Icons.dashboard,
            route: HomeScreen.route,
          ),
          AdminMenuItem(
            title: "Finance",
            icon: Icons.money,
            route: FinanceScreen.route,
          ),
          AdminMenuItem(
            title: "Tools",
            icon: Icons.construction,
            route: ToolsScreen.route,
          ),
          AdminMenuItem(
            title: "Workers",
            icon: Icons.person_add,
            route: WorkersScreen.route,
          ),
          AdminMenuItem(
            title: "Projects",
            icon: Icons.folder,
            route: ProjectsScreen.route,
          ),
          AdminMenuItem(
            title: "Garage",
            icon: Icons.tire_repair,
            route: GarageScreen.route,
          ),
        ],
        selectedRoute: "/",
        onSelected: navigate,
      ),
    );
  }
}
