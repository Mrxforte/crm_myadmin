import 'package:flutter/material.dart';

class ToolsDetalScreen extends StatelessWidget {
  const ToolsDetalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tool Details')),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/tool.png",
                width: double.infinity,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.4,
              ),

              //               final String name;
              // final String imageUrl;
              // final List<String> images;
              // final String category;
              // final double price;
              // final String description;
              // final bool isBroken;
              // final DateTime lastUpdated;
              // final List<String> locationsHistory;
              // final String currentLocation;
              // final String brand;
              // final String model;
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Title of the instrument",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Model"),
                      SizedBox(height: 20),
                      Text("category : Instruments"),
                      SizedBox(height: 20),
                      Text("Price L 200\$"),
                      SizedBox(height: 20),
                      Text("Brand: Hilti"),
                      SizedBox(height: 20),
                      Text("description"),
                      SizedBox(height: 20),
                      Text("is Broken : no"),
                      SizedBox(height: 20),
                      Text("current location : Nijno Novgorod"),
                      SizedBox(height: 20),
                      Text("last update : today"),
                      SizedBox(height: 20),
                      Text("List of locations : "),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
