import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for launching calls and URLs

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL +44 123456789', // Only show phone number
           ),
               
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
            onPressed: () {
              launch('https://www.google.com/maps/place/Mayfair+London'); // Open maps for route
            },
           ),






          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
            onPressed: () {
              // Show a dialog or perform other share actions
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Share via:'),
                  content: const Text('Instagram'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback? onPressed; // Optional callback for button action

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}