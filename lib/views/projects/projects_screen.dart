import 'package:ag_crm_myadmin/views/projects/project_details_screen.dart';
import 'package:ag_crm_myadmin/widgets/project_card_widget.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  static const String route = "/Projects";
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projects')),
      body: Container(
        margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 16.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            // ProjectCard
            return ProjectCardWidget(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ProjectDetailsScreen(key: key);
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
