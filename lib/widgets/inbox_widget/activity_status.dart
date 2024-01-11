import 'package:flutter/material.dart';

class ActivityStatus extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final String description;
  const ActivityStatus({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 35,
        child: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
      ),
      title: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14.5,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        description,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 14.5,
            overflow: TextOverflow.ellipsis),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(8, 1.5, 8, 1.5),
          child: Text(
            '99+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
