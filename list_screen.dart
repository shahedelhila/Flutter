import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final String userName;
  final String phoneNumber;

  const ListScreen({
    Key? key,
    required this.userName,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Display user information
          if (userName.isNotEmpty || phoneNumber.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blue.shade50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (userName.isNotEmpty)
                    Text(
                      'Name: $userName',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 8),
                  if (phoneNumber.isNotEmpty)
                    Text(
                      'Phone: $phoneNumber',
                      style: const TextStyle(fontSize: 16),
                    ),
                ],
              ),
            ),
          
          // ListView with static items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildListItem(
                  icon: Icons.book,
                  title: 'Flutter Development',
                  subtitle: 'Learn to build mobile applications',
                  color: Colors.blue,
                ),
                const SizedBox(height: 10),
                _buildListItem(
                  icon: Icons.code,
                  title: 'Dart Programming',
                  subtitle: 'Master the Dart language',
                  color: Colors.green,
                ),
                const SizedBox(height: 10),
                _buildListItem(
                  icon: Icons.phone_android,
                  title: 'Mobile UI Design',
                  subtitle: 'Create beautiful user interfaces',
                  color: Colors.orange,
                ),
                const SizedBox(height: 10),
                _buildListItem(
                  icon: Icons.navigation,
                  title: 'Navigation & Routing',
                  subtitle: 'Navigate between screens efficiently',
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
