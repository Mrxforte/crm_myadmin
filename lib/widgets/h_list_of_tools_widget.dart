import 'package:flutter/material.dart';

class HListOfToolsWidget extends StatelessWidget {
  const HListOfToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        padding: const EdgeInsets.only(left: 32),
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return _ProjectCard(
            imagePath: "assets/images/tool.png",
            location: "Tver",
            workersCount: 20,
            budget: "1000t",
            toolsCount: 28,
          );
        },
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String imagePath;
  final String location;
  final int workersCount;
  final String budget;
  final int toolsCount;

  const _ProjectCard({
    required this.imagePath,
    required this.location,
    required this.workersCount,
    required this.budget,
    required this.toolsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 12),

            // Location and Workers Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InfoRow(
                        icon: Icons.location_on_outlined,
                        text: location,
                        spacing: 8,
                      ),
                      const SizedBox(height: 8),

                      _InfoRow(
                        icon: Icons.person_outline,
                        text: "$workersCount workers",
                        spacing: 8,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                  const Spacer(),
                  // Budget and Tools Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _InfoRow(
                        icon: Icons.monetization_on_outlined,
                        text: budget,
                        spacing: 4,
                      ),
                      _InfoRow(
                        icon: Icons.build_outlined,
                        text: "$toolsCount tools",
                        spacing: 4,
                      ),
                    ],
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

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final double spacing;

  const _InfoRow({required this.icon, required this.text, this.spacing = 4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Theme.of(context).colorScheme.secondary),
        SizedBox(width: spacing),
        Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
