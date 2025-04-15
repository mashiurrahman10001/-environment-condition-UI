import 'package:flutter/material.dart';
import 'app_colors.dart';

class CarbonEmissionResultScreen extends StatelessWidget {
  const CarbonEmissionResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "1300",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "ppm",
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 8,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 30,
                    height: 8,
                    color: Colors.red,
                  ),
                  Container(
                    width: 30,
                    height: 8,
                    color: Colors.green,
                  ),
                  Container(
                    width: 30,
                    height: 8,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 30,
                    height: 8,
                    color: Colors.orange,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "VERY UNHEALTHY: Your office is emitting a lot of Carbon Dioxide",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.shadowColor,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.local_florist,
                        color: AppColors.accentGreen,
                        size: 48,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Plant",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "189 indoor plants",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Your office emits 2549ppm Carbon dioxide everyday",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Planted",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          Text(
                            "23/189",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.accentGreen,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 23 / 189, // 23 planted out of 189
                        backgroundColor: AppColors.textSecondary.withOpacity(0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.accentGreen),
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to OfficeScreen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accentGreen,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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