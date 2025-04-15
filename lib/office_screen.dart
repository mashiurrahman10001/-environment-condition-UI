import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'carbon_emission_result_screen.dart'; // Import the new screen

class OfficeScreen extends StatefulWidget {
  const OfficeScreen({super.key});

  @override
  _OfficeScreenState createState() => _OfficeScreenState();
}

class _OfficeScreenState extends State<OfficeScreen> {
  // State variables for the counters
  int numberOfPeople = 52;
  int numberOfRooms = 7;
  int totalArea = 3700;
  int totalAC = 5;
  int totalRefrigerator = 2;
  int totalComputers = 60;
  int totalIndoorPlants = 23;
  int totalKitchenBurner = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          children: [
            Icon(
              Icons.account_balance, // Office icon
              color: AppColors.textPrimary,
              size: 24,
            ),
            SizedBox(width: 8),
            Text(
              "Office",
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildCounterItem(
                    label: "Total number of people",
                    value: numberOfPeople,
                    onDecrement: () {
                      setState(() {
                        if (numberOfPeople > 0) numberOfPeople--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        numberOfPeople++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total number of rooms",
                    value: numberOfRooms,
                    onDecrement: () {
                      setState(() {
                        if (numberOfRooms > 0) numberOfRooms--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        numberOfRooms++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total area (sqft.)",
                    value: totalArea,
                    onDecrement: () {
                      setState(() {
                        if (totalArea > 0) totalArea--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        totalArea++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total AC",
                    value: totalAC,
                    onDecrement: () {
                      setState(() {
                        if (totalAC > 0) totalAC--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        totalAC++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total Refrigerator",
                    value: totalRefrigerator,
                    onDecrement: () {
                      setState(() {
                        if (totalRefrigerator > 0) totalRefrigerator--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        totalRefrigerator++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total Computers",
                    value: totalComputers,
                    onDecrement: () {
                      setState(() {
                        if (totalComputers > 0) totalComputers--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        totalComputers++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total indoor plants",
                    value: totalIndoorPlants,
                    onDecrement: () {
                      setState(() {
                        if (totalIndoorPlants > 0) totalIndoorPlants--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        totalIndoorPlants++;
                      });
                    },
                  ),
                  _buildCounterItem(
                    label: "Total kitchen burner",
                    value: totalKitchenBurner,
                    onDecrement: () {
                      setState(() {
                        if (totalKitchenBurner > 0) totalKitchenBurner--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        totalKitchenBurner++;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CarbonEmissionResultScreen()),
                );
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
                "Calculate Carbon Emission",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterItem({
    required String label,
    required int value,
    required VoidCallback onDecrement,
    required VoidCallback onIncrement,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: AppColors.accentGreen,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.remove, color: AppColors.textPrimary),
            onPressed: onDecrement,
          ),
          Text(
            value.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add, color: AppColors.textPrimary),
            onPressed: onIncrement,
          ),
        ],
      ),
    );
  }
}