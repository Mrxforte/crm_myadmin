import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Color(0xFF0C6CF2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(64),
                  bottomRight: Radius.circular(64),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // User Avatar
                  SizedBox(height: 80),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/image1.png"),
                  ),
                  // user name
                  SizedBox(height: 16),
                  Text(
                    "Vadim",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  // user email
                  SizedBox(height: 8),
                  Text(
                    "vadim@example.com",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  // user info card
                  SizedBox(height: 24),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // make these widgets reusable with
                        UserInfoTextWidget(
                          userFieldTitle: "Full Name",
                          userInfoField: "Vadim",
                        ),
                        SizedBox(height: 16),
                        UserInfoTextWidget(
                          userFieldTitle: "Phone",
                          userInfoField: "+1 234 567 8901",
                        ),
                        SizedBox(height: 16),
                        UserInfoTextWidget(
                          userFieldTitle: "Email",
                          userInfoField: "vadim@example.com",
                        ),
                        SizedBox(height: 16),
                        UserInfoTextWidget(
                          userFieldTitle: "Location",
                          userInfoField: "New York, USA",
                        ),
                        // talant
                        SizedBox(height: 16),
                        UserInfoTextWidget(
                          userFieldTitle: "Talant",
                          userInfoField: "UI/UX Designer",
                        ),
                        // department
                        SizedBox(height: 16),
                        UserInfoTextWidget(
                          userFieldTitle: "Department",
                          userInfoField: "Design",
                        ),
                      ],
                    ),
                  ),
                  // edit profile button
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 48,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoTextWidget extends StatelessWidget {
  const UserInfoTextWidget({
    super.key,
    required this.userFieldTitle,
    required this.userInfoField,
  });
  final String userFieldTitle;
  final String userInfoField;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userFieldTitle,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(userInfoField, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
