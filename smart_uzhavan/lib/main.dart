import 'package:flutter/material.dart';

void main() => runApp(const SmartUzhavanApp());

class SmartUzhavanApp extends StatelessWidget {
  const SmartUzhavanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Uzhavan',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: const RoleSelectionScreen(),
    );
  }
}

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FDF0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', height: 120), // Add your logo later
              const SizedBox(height: 20),
              const Text('Smart Uzhavan',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              const SizedBox(height: 40),
              const Text('Select your role',
                  style: TextStyle(fontSize: 18, color: Colors.black54)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  _buildRoleButton(context, 'Farmer', Icons.agriculture),
                  _buildRoleButton(context, 'Warehouse Owner', Icons.warehouse),
                  _buildRoleButton(context, 'Transporter', Icons.local_shipping),
                  _buildRoleButton(context, 'Buyer / Consumer', Icons.shopping_cart),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildRoleButton(BuildContext context, String title, IconData icon) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('$title page coming soon!')));
      },
      icon: Icon(icon, size: 24),
      label: Text(title, style: const TextStyle(fontSize: 16)),
    );
  }
}
