import 'package:ag_crm_myadmin/views/workers/add_woker_screen.dart';
import 'package:ag_crm_myadmin/views/workers/wokers_detail_screen.dart';
import 'package:flutter/material.dart';

class WorkersScreen extends StatelessWidget {
  static const String route = "/Workers";
  const WorkersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add worker screen
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const AddWokerScreen();
              },
            ),
          );
        },
        shape: CircleBorder(),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Workers')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      // Return worker details screen here
                      return WokersDetailScreen();
                    },
                  ),
                );
              },
              child: Card(
                elevation: 1,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(image: AssetImage('assets/images/tool.png')),
                  ),
                  title: Text('Worker ${index + 1}'),
                  subtitle: const Text('Worker Details'),
                ),
              ),
            );
          },

          separatorBuilder: (context, index) => const SizedBox(height: 8.0),
          itemCount: 10,
        ),
      ),
    );
  }
}
