import 'package:ag_crm_myadmin/widgets/custom_searchbar_widget.dart';
import 'package:ag_crm_myadmin/widgets/custom_top_appbar_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_projects_widget.dart';
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
      body: Column(
        children: [
          // Custom top Appbar
          CustomTopAppBarWidget(),
          // Custom serach bar
          CustomSearchbarWidget(),
          // Title and view all row
          TitleAndViewAllWidget(title: "Projects"),
          // List Of Projects
          HListOfProjectsWidget(),
          // List Of Workers
          // List of Tools
        ],
      ),
    );
  }
}
