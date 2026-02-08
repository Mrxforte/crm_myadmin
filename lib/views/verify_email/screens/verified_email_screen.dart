import 'package:ag_crm_myadmin/views/login/login_screen.dart';
import 'package:flutter/material.dart';

class VerifiedEmailScreen extends StatelessWidget {
  const VerifiedEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/2.png"),
              SizedBox(height: 20),
              Text(
                "Your account successfully created!",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Ipsum incididunt dolore Lorem esse excepteur do consectetur. Elit minim voluptate excepteur nostrud in ullamco ex aliqua aliquip tempor ut in commodo do. Labore ea pariatur in enim amet reprehenderit quis cupidatat aliquip occaecat irure enim.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),
                child: Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
