import 'package:flutter/material.dart';
import 'app_colors.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String ppm;
  final String statusLabel;
  final String change;
  final int memberCount;
  final VoidCallback? onTap;

  const PlaceCard({
    required this.title,
    required this.ppm,
    required this.statusLabel,
    required this.change,
    required this.memberCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.accentGreenLight,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    statusLabel,
                    style: const TextStyle(
                      color: AppColors.accentGreen,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  ppm,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.accentGreenLight,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "▼ $change",
                    style: const TextStyle(
                      color: AppColors.accentGreen,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  "ppm",
                  style: TextStyle(color: AppColors.textSecondary),
                ),
                const Spacer(),
                Row(
                  children: [
                    ...List.generate(
                      2,
                          (index) => Container(
                        margin: const EdgeInsets.only(left: 4),
                        child: const CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          "+$memberCount",
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "View Details >",
                style: TextStyle(
                  color: AppColors.accentGreen[600],
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}