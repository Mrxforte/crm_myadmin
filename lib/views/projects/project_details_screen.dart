import 'package:flutter/material.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Project Details')),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset('assets/images/worker.jpg', fit: BoxFit.cover),
            ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    //  project title
                    ProjectTitleWidget(),
                    SizedBox(height: 10),
                    //  project description
                    ProjectDescriptionWidget(),
                    SizedBox(height: 20),
                    // budgets row
                    BudgetsRowWidget(),
                    // listview horizontal  list of wokers used in project
                    SizedBox(height: 20),
                    ListOfWokersWidget(),

                    // list of tools horizontal used in project
                    SizedBox(height: 20),
                    ListOfToolsWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListOfToolsWidget extends StatelessWidget {
  const ListOfToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tools Used',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/worker.jpg'),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/worker.jpg'),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/worker.jpg'),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/worker.jpg'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListOfWokersWidget extends StatelessWidget {
  const ListOfWokersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Workers Involved',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/worker.jpg'),
                    ),
                    SizedBox(height: 5),
                    Text('John Doe'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BudgetsRowWidget extends StatelessWidget {
  const BudgetsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Budget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('\$150,000'),
          ],
        ),
        Column(
          children: [
            Text(
              'Spent',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('\$75,000'),
          ],
        ),
      ],
    );
  }
}

class ProjectDescriptionWidget extends StatelessWidget {
  const ProjectDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Project Description goes here. This is a detailed description of the project.',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ProjectTitleWidget extends StatelessWidget {
  const ProjectTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tver object',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
