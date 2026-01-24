import 'package:ag_crm_myadmin/views/dashboard/dashboard_screen.dart';
import 'package:ag_crm_myadmin/views/home/home_screen.dart';
import 'package:ag_crm_myadmin/views/projects/projects_screen.dart';
import 'package:ag_crm_myadmin/views/tools/tools_screen.dart';
import 'package:ag_crm_myadmin/views/workers/workers_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  static const String route = "/";
  MainScreen({super.key});
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    ToolsScreen(),
    DashboardScreen(),
    WorkersScreen(),
    ProjectsScreen(),
  ];
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[widget.currentIndex],
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: "Tools"),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_point),
            label: "Dahsboard",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Workers"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "projects"),
        ],
        currentIndex: widget.currentIndex,
        onTap: (value) {
          setState(() {
            widget.currentIndex = value;
          });
        },
      ),
    );
  }
}
