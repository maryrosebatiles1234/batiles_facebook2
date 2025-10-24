import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Page',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const NotificationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                NotificationTile(
                  imagePath: 'assets/profile/prof3.jpg',
                  title: 'Real liked your photo',
                  subtitle: '2 minutes ago',
                ),
                NotificationTile(
                  imagePath: 'assets/profile/prof4.jpg',
                  title: 'Von commented on your post',
                  subtitle: '4 minutes ago',
                ),
                NotificationTile(
                  imagePath: 'assets/profile/prof2.jpg',
                  title: 'Luis followed you',
                  subtitle: '5 minutes ago',
                ),
                NotificationTile(
                  imagePath: 'assets/profile/prof5.jpg',
                  title: 'Your post reached 100 likes!',
                  subtitle: '2 hour ago',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const NotificationTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.more_vert),
    );
  }
}

