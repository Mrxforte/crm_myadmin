import 'package:flutter/material.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Card(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/worker.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.22,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Text('Project '),
              ),

              //  project details
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconTextWidget(
                          text: 'Tver',
                          icon: Icons.location_on,
                        ),
                        CustomIconTextWidget(
                          text: 'Wokers  22',
                          icon: Icons.people_alt,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconTextWidget(
                          text: 'Tools  15',
                          icon: Icons.build,
                        ),
                        CustomIconTextWidget(
                          text: 'Budget  22.000',
                          icon: Icons.attach_money,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconTextWidget extends StatelessWidget {
  const CustomIconTextWidget({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[600]),
          SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
