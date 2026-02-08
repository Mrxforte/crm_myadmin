import 'package:ag_crm_myadmin/views/projects/projects_screen.dart';
import 'package:ag_crm_myadmin/views/tools/tools_screen.dart';
import 'package:ag_crm_myadmin/views/workers/workers_screen.dart';
import 'package:ag_crm_myadmin/widgets/custom_searchbar_widget.dart';
import 'package:ag_crm_myadmin/widgets/custom_top_appbar_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_projects_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_tools_widget.dart';
import 'package:ag_crm_myadmin/widgets/h_list_of_workers_widget.dart';
import 'package:ag_crm_myadmin/widgets/title_and_view_all_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
              TitleAndViewAllWidget(
                title: "Projects",
                onTapHandler: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProjectsScreen(),
                    ),
                  );
                },
              ),
              // List Of Projects
              HListOfProjectsWidget(),
              // Title and view all row
              TitleAndViewAllWidget(
                title: "Wokrers",
                onTapHandler: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const WorkersScreen(),
                    ),
                  );
                },
              ),
              // List Of Workers
              HListOfWorkersWidget(),
              // Title and view all row
              TitleAndViewAllWidget(
                title: "Tools",
                onTapHandler: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ToolsScreen(),
                    ),
                  );
                },
              ),
              // List of Tools
              HListOfToolsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
