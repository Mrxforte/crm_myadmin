import 'package:ag_crm_myadmin/widgets/custom_searchbar_widget.dart';
import 'package:ag_crm_myadmin/widgets/custom_top_appbar_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_projects_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_tools_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_workers_widget.dart';
import 'package:ag_crm_myadmin/widgets/title_and_view_all_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Custom top Appbar
              CustomTopAppBarWidget(),
              // Custom serach bar
              CustomSearchbarWidget(),
              // Title and view all row
              TitleAndViewAllWidget(title: "Projects"),
              // List Of Projects
              HListOfProjectsWidget(),
              // Title and view all row
              TitleAndViewAllWidget(title: "Wokrers"),
              // List Of Workers
              HListOfWorkersWidget(),
              // Title and view all row
              TitleAndViewAllWidget(title: "Tools"),
              // List of Tools
              HListOfToolsWidget(),
            ],
          ),
        ),
      ),
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
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "finance"),
        ],
      ),
    );
  }
}
