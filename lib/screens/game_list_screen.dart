import 'package:flutter/material.dart';
import 'detail_screen.dart';

class GameListScreen extends StatelessWidget {
  const GameListScreen({super.key});

  final List<Map<String, String>> games = const [
    {'name': 'RDR 2', 'genre': 'Open World'},
    {'name': 'Crash Bandicot', 'genre': 'Racing'},
    {'name': 'Ragnarok', 'genre': 'Adventure'},
    {'name': 'Fifa Fottball', 'genre': 'Sport'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Game')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: games.length,
        itemBuilder: (context, index) {
          final game = games[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(game['name']!),
              subtitle: Text(game['genre']!),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white70,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: game['name']!,
                      genre: game['genre']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
