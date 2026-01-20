import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  static const String route = "/Projects";
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Projects",
            style: TextStyle(fontSize: 30, color: Colors.black45),
          ),
          Divider(height: 2),
          // add projects form field
          Form(
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Upload Image"),
                  icon: Icon(Icons.image),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
