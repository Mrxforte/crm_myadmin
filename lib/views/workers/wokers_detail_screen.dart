import 'package:flutter/material.dart';

class WokersDetailScreen extends StatelessWidget {
  const WokersDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Worker Details')),
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                'assets/images/tool.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Name: John Doe',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Skill: Electrician',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Current Location: Tver',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text('Hourly Rate: \$20', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('Daily Rate: \$150', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text(
                        'Telephone: 123-456-7890',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email: john.doe@example.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text('Country: USA', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('At Home: No', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('Brigadier: Yes', style: TextStyle(fontSize: 16)),
                      // avances,
                      SizedBox(height: 10),
                      Text('Avances: \$200', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('Penalties: \$50', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('Bonuses: \$100', style: TextStyle(fontSize: 16)),
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
