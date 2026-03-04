import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const ProfileCard({
    super.key,
    required this.title,
    required this.subtitle, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(Icons.person, size: 40),
          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle),
              ],
            ),
          ),

          const Icon(Icons.circle_outlined)
        ],
      ),
    );
  }
}

