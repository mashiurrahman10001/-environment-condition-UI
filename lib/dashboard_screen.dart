import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'place_card.dart';
import 'home_screen.dart';
import 'office_screen.dart'; // Import the new OfficeScreen

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.accentGreen,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Good Morning",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Ahmed Ariyan",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text.rich(
                          TextSpan(
                            text: "You are in a ",
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.textSecondary,
                            ),
                            children: [
                              TextSpan(
                                text: "healthy",
                                style: TextStyle(
                                  color: AppColors.accentGreen,
                                ),
                              ),
                              const TextSpan(text: " environment"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.blue[100],
                      child: const Icon(
                        Icons.person,
                        size: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "My Places",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 16),
              PlaceCard(
                title: "Home",
                ppm: "652",
                statusLabel: "Good",
                change: "13%",
                memberCount: 2,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
              const SizedBox(height: 16),
              PlaceCard(
                title: "Office",
                ppm: "447",
                statusLabel: "Healthy",
                change: "37%",
                memberCount: 47,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OfficeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}