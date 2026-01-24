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
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Tver object',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Project Description goes here. This is a detailed description of the project.',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      // budgets row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Budget',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('\$150,000'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Spent',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('\$75,000'),
                            ],
                          ),
                        ],
                      ),
                      // listview horizontal  list of wokers used in project
                      SizedBox(height: 20),
                      Text(
                        'Workers Involved',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                          ],
                        ),
                      ),

                      // list of tools horizontal used in project
                      SizedBox(height: 20),
                      Text(
                        'Tools Used',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/worker.jpg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
