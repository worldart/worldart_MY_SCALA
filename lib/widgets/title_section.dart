import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                ),
              ],
            ), 
          ),
          Icon(
            Icons.star,
            color: const Color.fromARGB(255, 255, 0, 149),
          ),
          const Text('234'),
        ],
      ),
    );
  }
}